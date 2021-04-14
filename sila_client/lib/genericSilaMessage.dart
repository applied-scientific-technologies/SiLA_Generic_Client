import 'package:protobuf/protobuf.dart';
import 'package:sila_client/silaClient.dart';
import 'constants.dart';
import 'SiLA/SiLAFramework.pb.dart' as sila;

class genericSiLAMessage extends GeneratedMessage {
  String messageName;
  List paramTypeName = [];
  List paramVals = [];

  genericSiLAMessage();




  genericSiLAMessage.propertyRequest(this.messageName); // Property requests have no fields
  genericSiLAMessage.propertyResponse(
      this.messageName, this.paramTypeName, this.paramVals) {
    for (var index = 0; index < paramTypeName.length; index++) {
      // Assume paramVals list is of equal length to paramTypes
      var paramType = paramTypeName[index][0];
      var responseVal = paramVals[index];
      var fieldNo = index + 1; // Field no starts at 1 for whatever reason

      if (paramType == "Bool") {
        // Move these back to enums!
        setField(fieldNo, responseVal);
      } else if (paramType == "String") {
        setField(fieldNo, responseVal);
      } else if (paramType == "Integer") {
        setField(fieldNo, responseVal);
      } else if (paramType == "Real") {
        setField(fieldNo, responseVal);
        //Other types here
      } else {
        print("Unknown type");
        setField(fieldNo, responseVal);
      }
    }
  }

  genericSiLAMessage.commandRequest(
      this.messageName, this.paramTypeName, this.paramVals) {
    for (var index = 0; index < paramTypeName.length; index++) {
      // Assume paramVals list is of equal length to paramTypes
      var paramType = paramTypeName[index][0];
      var paramName = paramTypeName[index][1];
      var paramValue = paramVals[index];
      var fieldNo = index + 1; // Field no starts at 1 for whatever reason

      if (paramType == "Bool") {
        // Move these back to enums!
        setField(fieldNo, sila.Boolean()..value = paramValue);
      } else if (paramType == "String") {
        setField(fieldNo, sila.String()..value = paramValue);
      } else if (paramType == "Integer") {
        setField(fieldNo, sila.Integer()..value = paramValue);
      } else if (paramType == "Real") {
        setField(fieldNo, sila.Real()..value = paramValue);
        // OTHER SILA TYPES HERE ...
      } else {
        print("UNKNOWN TYPE");
      }
    }
  }

  genericSiLAMessage.commandResponse(
      this.messageName, this.paramTypeName, this.paramVals) {
    for (var index = 0; index < paramTypeName.length; index++) {
      // Assume paramVals list is of equal length to paramTypes
      var paramType = paramTypeName[index][0];
      var responseVal = paramVals[index];
      var fieldNo = index + 1; // Field no starts at 1 for whatever reason

      if (paramType == "Bool") {
        // Move these back to enums!
        setField(fieldNo, responseVal);
      } else if (paramType == "String") {
        setField(fieldNo, responseVal);
      } else if (paramType == "Integer") {
        setField(fieldNo, responseVal);
      } else if (paramType == "Real") {
        setField(fieldNo, responseVal);
      } else if (paramType == "CommandConfirm"){
        setField(fieldNo, responseVal);
      } else if (paramType == "CommandExecInfo") {
        setField(fieldNo, responseVal);
      }else {
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

    for (var index = 0; index < paramTypeName.length; index++) {
      String type = paramTypeName[index][0];
      String name = paramTypeName[index][1];
      int fieldNo = index + 1;

      if (type == "Bool") {
        _info.aOM(fieldNo, name, subBuilder: sila.Boolean.create);
      } else if (type == "String") {
        _info.aOM(fieldNo, name, subBuilder: sila.String.create);
      } else if (type == "Integer") {
        _info.aOM(fieldNo, name, subBuilder: sila.Integer.create);
      } else if (type == "Real") {
        _info.aOM(fieldNo, name, subBuilder: sila.Real.create);
        // OTHER SILA TYPES HERE ...
      } else if (type == "CommandConfirm") {
        _info.aOM(fieldNo, name, subBuilder: sila.CommandConfirmation.create);
      } else if (type == "CommandExecInfo") {
        _info.aOM(fieldNo, name, subBuilder: sila.ExecutionInfo.create);
      }
      else{
        print("UNKNOWN TYPE");
      }
    }

    return _info;
  }
}
