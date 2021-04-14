import 'dart:convert';

import 'package:protobuf/protobuf.dart';
import 'package:grpc/grpc.dart';
import 'package:sila_client/SiLA/SiLAServiceV2.pb.dart';
import 'package:sila_client/SiLA/SiLAServiceV2.pbgrpc.dart';
import 'package:sila_client/SiLA/SiLAFramework.pb.dart' as sila;
import 'package:sila_client/genericSilaMessage.dart';
import 'package:collection/collection.dart';
import 'package:xml/xml.dart';
import 'package:binary/binary.dart';

class SilaClient {
  /*
      - Accept Sila Server Details
      - Connect to Server using SiLA Service Client
      - Request Feature IDs
      - Request Feature XML
      - Generate Mappings
        - Commands Non Obs
        - Commands Obs
        - Properties Non Obs
        - Properties Obs
   */

  String serverIp;
  int serverPort;
  ClientChannel _channel;
  SiLAServiceClient _silaServiceClient;
  List<String> _featureIds;
  Map _featureIDXML = {};
  List<Feature> features = [];
  List clientCalls = [];
  Client _rawClient;

  SilaClient(this.serverIp, this.serverPort);

  connectToServer() async {
    _channel = new ClientChannel(serverIp,
        port: serverPort,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    print(_channel.toString());

    _silaServiceClient = SiLAServiceClient(_channel);

    print("Requesting Features");

    // Request Available Features and build Feature Objects
    var responses = await _silaServiceClient.get_ImplementedFeatures(
        Get_ImplementedFeatures_Parameters(),
        options: CallOptions(timeout: Duration(seconds: 3)));

    _featureIds = responses.implementedFeatures
        .map((featureId) => featureId.value)
        .toList();

    // Now for each feature ID request XML
    for (var id in _featureIds) {
      sila.String featureId = sila.String()..value = id;
      var xmlResponse = await _silaServiceClient.getFeatureDefinition(
          GetFeatureDefinition_Parameters()..featureIdentifier = featureId,
          options: CallOptions(timeout: Duration(seconds: 3)));

      // Have XML need to now parse it
      var xml = xmlResponse.featureDefinition.value;
      _featureIDXML[id] = xml;

      final document = XmlDocument.parse(_featureIDXML[id]);

      // Need to figure out the following
      // Package Name -> sila2.<originator>.<category>.<Feature Identifier LOWER CASE>.v<Major Feature Version>
      // Service Name -> <Feature Identifier>
      // Command/Property Name
      // Command Params In -> Field / Type / Name
      // Command/Property Response Out -> Field /Type / Name

      var originator =
          document.rootElement.getAttributeNode("Originator").value;
      var category = document.rootElement.getAttributeNode("Category").value;
      var identifier = document.rootElement.children[1].text;
      var version = document.rootElement
          .getAttributeNode("FeatureVersion")
          .value
          .split(".")[0];
      var packageName =
          "sila2.$originator.$category.${identifier.toLowerCase()}.v$version";
      var serviceName = identifier;

      var commandElements = document.findAllElements("Command");
      var propertyElements = document.findAllElements("Property");

      List<Command> commands = [];
      List<Property> properties = [];

      try {
        for (var element in commandElements) {
          commands.add(Command.fromXml(element));
        }

        for (var element in propertyElements) {
          properties.add(Property.fromXml(element));
        }
        features
            .add(Feature(id, packageName, serviceName, commands, properties));
      } catch (ex) {
        print(ex);
      }
    }

    //Assume no errors
    _rawClient = Client(_channel);
    print("Finished connecting - Features Discovered ${features.length}");
  }


  callCommand(var featureId, var commandId, var commandParams) async {
    Feature feature = features[featureId];
    Command command = feature.commands[commandId];

    // Build a client call for the command
    ClientMethod clientMethod = ClientMethod(
        '/${feature.packageName}.${feature.serviceName}/${feature.commands[commandId].name}',
        (request) => request.writeToBuffer(), // Write request message to buffer
        (response) {
          var responseValues = parseSilaResponse(feature.commands[commandId].outputs, response);
          return genericSiLAMessage.commandResponse("${command.name}_Responses", command.outputs, responseValues);
    });

    genericSiLAMessage requestMessage = genericSiLAMessage.commandRequest("${command.name}_Parameters", command.inputs, commandParams);
    var response =
        await _rawClient.$createUnaryCall(clientMethod, requestMessage);
    return response;
  }

  getProperty(var featureId, var propertyId) async {
    Feature feature = features[featureId];
    Property property = feature.properties[propertyId];

    // Build a client call for the command
    ClientMethod clientMethod = ClientMethod(
        '/${feature.packageName}.${feature.serviceName}/Get_${feature.properties[propertyId].name}',
            (request) => request.writeToBuffer(), // Write request message to buffer
            (response) {
          var responseValues = parseSilaResponse(property.outputs, response);
          return genericSiLAMessage.propertyResponse("Get_${property.name}_Responses", property.outputs, responseValues);
        });

    genericSiLAMessage requestMessage = genericSiLAMessage.propertyRequest("Get_${property.name}_Parameters");
    var response =
    await _rawClient.$createUnaryCall(clientMethod, requestMessage);
    return response;
  }

  Future<Stream> subscribeProperty(var featureId, var propertyId) async {
    Feature feature = features[featureId];
    Property property = feature.properties[propertyId];

    // Build a client call for the command
    ClientMethod clientMethod = ClientMethod(
        '/${feature.packageName}.${feature.serviceName}/Subscribe_${feature.properties[propertyId].name}',
            (request) => request.writeToBuffer(), // Write request message to buffer
            (response) {
          var responseValues = parseSilaResponse(property.outputs, response);
          return genericSiLAMessage.propertyResponse("Subscribe_${property.name}_Responses", property.outputs, responseValues);
        });

    genericSiLAMessage requestMessage = genericSiLAMessage.propertyRequest("Subscribe_${property.name}_Parameters");
    var responseStream =
    _rawClient.$createStreamingCall(clientMethod, Stream.fromIterable([requestMessage]));
    return responseStream;
  }


  callStreamCommand(var featureId, var commandId, var commandParams) async {
    Feature feature = features[featureId];
    Command command = feature.commands[commandId];

    // Build a client call for the command
    ClientMethod clientMethod = ClientMethod(
        '/${feature.packageName}.${feature.serviceName}/${feature.commands[commandId].name}',
        (request) => request.writeToBuffer(),
        // Write request message to buffer
        (response) {
      var responseValues = parseSilaResponse(feature.commands[commandId].outputs, response);
      return genericSiLAMessage.commandResponse(command.name, command.outputs, responseValues);
    });

    genericSiLAMessage requestMessage = genericSiLAMessage.commandRequest(command.name, command.inputs, commandParams);
    var response = await _rawClient.$createStreamingCall(
        clientMethod, Stream.fromIterable([requestMessage]));
    return response;
  }

  void parseResponse(typeMap, List<int> response) {
    var position = 0;

    try {
      while (position < response.length) {
        // Take first byte, this is key for subsequent value
        var key = response[position];
        position += 1;

        // Drop MSB, first byte is always a VARINT
        key = key & 127;
        // Wire Type -> Last 3 Bits
        var wire_type = key & 7;
        // Field Number -> Right shift by three
        var field_no = key >> 3;

        // Determine typing
        switch (wire_type) {
          case 0:
            {
              print("VARINT");

              var byte_position = position;
              var bytes_length = 1;
              var found_end = false;

              // Read in until we find byte with no MSB set, this is last byte of the varint
              while (!found_end) {
                byte_position += 1;
                bytes_length++;

                var current_byte = response[byte_position];

                if (!current_byte.msb(8)) {
                  //bit length
                  print("Found end of Varint");
                  found_end = true;
                }
              }

              var varint_bytes =
              response.sublist(position, position + bytes_length);

              var varint_bit_string = '';

              // Reverse
              reverse(varint_bytes);

              for (int i = 0; i < varint_bytes.length; i++) {
                //Drop MSB from each byte
                varint_bytes[i] = varint_bytes[i].clearBit(7);
                varint_bit_string += varint_bytes[i].toBinary();
              }

              var value = int.tryParse(varint_bit_string, radix: 2);
              print("VARINT VALUE: $value");

              position += bytes_length;
            }
            break;
          case 1:
            {
              print("64-Bit");
            }
            break;
          case 2:
            {
              print("Variable Length Value Found");
              // Read next byte along to find length of value
              var var_length = response[position];
              print("Length $var_length");
              position += 1;
              var var_value = utf8.decode(
                // Would need to confirm with definition what expected type not always a string
                  response.sublist(position, position + var_length));
              print("Value (Assume Str): ${var_value}");
              position += var_length;
            }
            break;
          case 3:
            {
              print("Start Group");
            }
            break;
          case 4:
            {
              print("End Group");
            }
            break;
          case 5:
            {
              print("32-Bit");
            }
            break;
        }
      }
    } catch (ex) {
      print(ex);
    }
  }

  List<dynamic> parseSilaResponse(outputMap, response){
    var position = 0;
    var responseValues = [];

    try {
      while (position < response.length) {
        // Take first byte, this is key for subsequent value
        var key = response[position];
        position += 1;

        // Drop MSB, first byte is always a VARINT
        key = key & 127;
        // Wire Type -> Last 3 Bits
        var wire_type = key & 7;
        // Field Number -> Right shift by three
        var field_no = key >> 3;

        // Determine typing - For now only expect messages
        switch (wire_type) {
          case 2:
            {
              print("Variable Length Value Found");
              // Read next byte along to find length of value
              var var_length = response[position];
              print("Length $var_length");
              position += 1;
              var var_value = response.sublist(position, position + var_length);

              //Now figure out what this is using the output mapping
              var output = outputMap[field_no - 1]; //0 index
              var type = output[0];
              var name = output[1];
              var value;

              if (type == "String")
                value = sila.String.fromBuffer(var_value);
              else if (type == "Integer")
                value = sila.Integer.fromBuffer(var_value);
              else if (type == "Real")
                value = sila.Real.fromBuffer(var_value);

              responseValues.add(value);

              print("Converted value: $value");
              position += var_length;
            }
        }
      }

      print("Finished parsing, creating response message");
      return responseValues;

    } catch (ex) {
      print(ex);
    }
  }
}

class Feature {
  String featureId;
  String packageName;
  String serviceName;
  List<Command> commands = [];
  List<Property> properties = [];

  Feature(this.featureId, this.packageName, this.serviceName, this.commands,
      this.properties);
}

// Commands are functions and take inputs and return outputs
class Command {
  String name; // CommandIdentifier
  List inputs =
      []; // [Type, Name] (CommandIdentifier_Parameters), index + 1 is field
  List outputs = []; // [Type, Name] (CommandIdentifier_Responses)
  bool observable;

  Command(this.name, this.inputs, this.outputs, this.observable);

  Command.fromXml(XmlElement commandElement) {
    // Identifier
    name = commandElement.findElements("Identifier").first.text;

    // Observable
    observable =
        commandElement.findElements("Observable").first.text.toLowerCase() ==
            "yes";

    // Parameters
    var paramElements = commandElement.findElements("Parameter");

    for (var element in paramElements) {
      var param_id = element.findElements("Identifier").first.text;

      var isConstrained = element.findAllElements("Constrained").isNotEmpty;
      // Check for actual constraint ...

      // Check for Derived Types
      // is a Structure / List element present -> Yes parse diff Else
      // For now consider basic types only
      var type = element.findAllElements("Basic").first.text;
      inputs.add([type, param_id]);
    }

    var responseElement = commandElement.findElements("Response");
    for (var element in responseElement) {
      var responseId = element.findElements("Identifier").first.text;

      var isConstrained = element.findAllElements("Constrained").isNotEmpty;
      // Check for actual constraint ...

      // Check for Derived Types
      // is a Structure / List element present -> Yes parse diff Else
      // For now consider basic types only
      var type = element.findAllElements("Basic").first.text;
      outputs.add([type, responseId]);
    }
  }
}

// Propertys take no inputs and return only outputs (methods)
// In protobuf append Get before ID
class Property {
  String name; // PropertyIdentifier
  List outputs = []; // [Type, Name] (Get_PropertyIdentifier_Responses)
  bool observable;

  Property(this.name, this.outputs, this.observable);

  Property.fromXml(XmlElement propertyElement) {
    // Identifier
    name = propertyElement.findElements("Identifier").first.text;

    // Observable
    observable =
        propertyElement.findElements("Observable").first.text.toLowerCase() ==
            "yes";

    var isConstrained =
        propertyElement.findAllElements("Constrained").isNotEmpty;
    // Check for actual constraint ...

    // Check for Derived Types
    // is a Structure / List element present -> Yes parse diff Else
    // For now consider basic types only
    var type = propertyElement.findAllElements("Basic").first.text;
    outputs.add([
      type,
      name
    ]); // Properties are single values so share name (under basic types)
  }
}
