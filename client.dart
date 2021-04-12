// Copyright (c) 2018, the gRPC project authors. Please see the AUTHORS file
// for details. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:fixnum/fixnum.dart';
import 'package:binary/binary.dart';
import 'dart:typed_data';
import 'SiLAFramework.pb.dart' as sila;

/// Dart implementation of the gRPC helloworld.Greeter client.
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';

enum proto_types { BOOL, BYTES, DOUBLE, FLOAT, INT64, SINT32, STRING, UINT32 }
enum sila_types {
  BOOL,
  COMMAND_CONFIRM,
  COMMAND_EXEC_UUID,
  DATE,
  DURATION,
  EXEC_ERROR,
  EXEC_INFO,
  EXEC_INFO_COMMAND_STATUS,
  FRAMEWORK_ERROR,
  FRAMEWORK_ERROR_TYPE,
  INTEGER,
  REAL,
  READ_ERROR,
  SILA_ERROR,
  SMALL_BINARY,
  STRING,
  TIME,
  TIMESTAMP,
  TIMEZONE,
  VALIDATION_ERROR
}

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    '192.168.10.5',
    port: 50051,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );

  var client = Client(channel);

  final sila_hello_world_method = ClientMethod(
      '/sila2.org.silastandard.examples.greetingprovider.v1.GreetingProvider/SayHello',
      (request) {
    print("Serialising request");
    return request.writeToBuffer();
  }, (response) {
    parseResponse({}, response);
    var x = sila.String.fromBuffer(response.sublist(2));
    Map replyMap = {
      1: [sila_types.STRING, "_", "Greeting"]
    };

    return genericSiLAMessage.fromMap('SayHello_Responses', replyMap);
  });

  final hello_world_method = ClientMethod<genericMessage, genericMessage>(
      '/helloworld.Greeter/SayHello', // Route = proto package.service name/RPC Name
      (request) {
    print("Serialising request");
    return request.writeToBuffer();
  }, // Given a request serialize it
      (List<int> response) {
    // Receiving a response deserialize it
    parseResponse({}, response);

    Map helloReplyMap = {
      // This should be built from response + xml
      0: [proto_types.STRING, '', "hello_message"],
      1: [proto_types.STRING, '', "goodbye_message"]
    };

    return genericMessage.fromMap("HelloReply", helloReplyMap);
  });

  final add_500_method = ClientMethod<genericMessage, genericMessage>(
      '/helloworld.Greeter/add500', (request) => request.writeToBuffer(),
      (List<int> response) {
    parseResponse({}, response);

    Map add500ReplyMap = {
      0: [proto_types.UINT32, 0, "result_value"]
    };

    return genericMessage.fromMap("add500Reply", add500ReplyMap);
  });

  Map helloRequestMap = {
    0: [proto_types.STRING, "Joey", "name"]
  };

  var msg = genericMessage.fromMap("HelloRequest", helloRequestMap);

  Map add500RequestMap = {
    0: [proto_types.UINT32, 125, "initial_value"]
  };

  Map silaHelloRequestMap = {
    1: [sila_types.STRING, "Testing", "Name"]
  };

  //await client.$createUnaryCall(hello_world_method, msg);
  //await client.$createUnaryCall(add_500_method,

  await client.$createUnaryCall(sila_hello_world_method,
      genericSiLAMessage.fromMap("SayHello_Parameters", silaHelloRequestMap));

  print("Done");
}

void parseResponse(Map field_to_type_map, List<int> response) {
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

class silaHelloMessage extends GeneratedMessage {
  silaHelloMessage() {
    setField(1, sila.String()..value = "Testing");
  }

  @override
  GeneratedMessage clone() {
    // TODO: implement clone
    throw UnimplementedError();
  }

  @override
  GeneratedMessage createEmptyInstance() {
    // TODO: implement createEmptyInstance
    throw UnimplementedError();
  }

  @override
  // TODO: implement info_
  BuilderInfo get info_ {
    BuilderInfo _info = BuilderInfo("SayHello_Parameters");
    _info.aOM(1, "Name", subBuilder: sila.String.create);
    return _info;
  }
}

class genericMessage extends GeneratedMessage {
  String messageName;
  Map fieldTypeValueNameMap;

  genericMessage();

  genericMessage.fromMap(this.messageName, this.fieldTypeValueNameMap) {
    for (var field in fieldTypeValueNameMap.keys) {
      proto_types type = fieldTypeValueNameMap[field][0];
      var value = fieldTypeValueNameMap[field][1];

      if (type == proto_types.BOOL) {
        $_setBool(field, value);
      } else if (type == proto_types.BYTES) {
        $_setBytes(field, value);
      } else if (type == proto_types.DOUBLE) {
        $_setDouble(field, value);
      } else if (type == proto_types.FLOAT) {
        $_setDouble(field, value);
      } else if (type == proto_types.INT64) {
        $_setInt64(field, value);
      } else if (type == proto_types.SINT32) {
        $_setSignedInt32(field, value);
      } else if (type == proto_types.STRING) {
        $_setString(field, value);
      } else if (type == proto_types.UINT32) {
        $_setUnsignedInt32(field, value);
      } else {
        print("UNKNOWN TYPE");
      }
    }
  }

  @override
  GeneratedMessage clone() {
    throw UnimplementedError();
  }

  @override
  GeneratedMessage createEmptyInstance() {
    throw UnimplementedError();
  }

  @override
  BuilderInfo get info_ {
    BuilderInfo _info = BuilderInfo(messageName);

    for (var field in fieldTypeValueNameMap.keys) {
      proto_types type = fieldTypeValueNameMap[field][0];
      var name = fieldTypeValueNameMap[field][2];
      field += 1; // Info uses 1-index

      if (type == proto_types.BOOL) {
        _info.aOB(field, name);
      } else if (type == proto_types.BYTES) {
        _info.add(field, name, PbFieldType.OY, 0, null, null, null);
      } else if (type == proto_types.DOUBLE) {
        _info.add(field, name, PbFieldType.OD, 0.0, null, null, null);
      } else if (type == proto_types.FLOAT) {
        _info.add(field, name, PbFieldType.OF, 0.0, null, null, null);
      } else if (type == proto_types.INT64) {
        _info.aInt64(field, name);
      } else if (type == proto_types.SINT32) {
        _info.add(field, name, PbFieldType.OS3, 0, null, null, null);
      } else if (type == proto_types.STRING) {
        _info.aOS(field, name);
      } else if (type == proto_types.UINT32) {
        _info.add(field, name, PbFieldType.OU3, 0, null, null, null);
      } else {
        print("UNKNOWN TYPE");
      }
    }

    return _info;
  }
}

class genericSiLAMessage extends GeneratedMessage {
  String messageName;
  Map fieldTypeValueNameMap;

  genericSiLAMessage();

  genericSiLAMessage.fromMap(this.messageName, this.fieldTypeValueNameMap) {
    for (var field in fieldTypeValueNameMap.keys) {
      sila_types type = fieldTypeValueNameMap[field][0];
      var value =
          fieldTypeValueNameMap[field][1]; // Note field should be 1-index

      if (type == sila_types.BOOL) {
        setField(field, sila.Boolean()..value = value);
      } else if (type == sila_types.STRING) {
        setField(field, sila.String()..value = value);
      } else if (type == sila_types.INTEGER) {
        setField(field, sila.Integer()..value = value);
      } else if (type == sila_types.REAL) {
        setField(field, sila.Real()..value = value);
        // OTHER SILA TYPES HERE ...
      } else {
        print("UNKNOWN TYPE");
      }
    }
  }

  @override
  GeneratedMessage clone() {
    throw UnimplementedError();
  }

  @override
  GeneratedMessage createEmptyInstance() {
    throw UnimplementedError();
  }

  @override
  BuilderInfo get info_ {
    BuilderInfo _info = BuilderInfo(messageName);

    for (var field in fieldTypeValueNameMap.keys) {
      sila_types type = fieldTypeValueNameMap[field][0];
      var name = fieldTypeValueNameMap[field][2];

      if (type == sila_types.BOOL) {
        _info.aOM(field, name, subBuilder: sila.Boolean.create);
      } else if (type == sila_types.STRING) {
        _info.aOM(field, name, subBuilder: sila.String.create);
      } else if (type == sila_types.INTEGER) {
        _info.aOM(field, name, subBuilder: sila.Integer.create);
      } else if (type == sila_types.REAL) {
        _info.aOM(field, name, subBuilder: sila.Real.create);
        // OTHER SILA TYPES HERE ...
      } else {
        print("UNKNOWN TYPE");
      }
    }

    return _info;
  }
}
