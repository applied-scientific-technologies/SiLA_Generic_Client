///
//  Generated code. Do not modify.
//  source: SiLAFramework.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ExecutionInfo_CommandStatus extends $pb.ProtobufEnum {
  static const ExecutionInfo_CommandStatus waiting =
      ExecutionInfo_CommandStatus._(0, 'waiting');
  static const ExecutionInfo_CommandStatus running =
      ExecutionInfo_CommandStatus._(1, 'running');
  static const ExecutionInfo_CommandStatus finishedSuccessfully =
      ExecutionInfo_CommandStatus._(2, 'finishedSuccessfully');
  static const ExecutionInfo_CommandStatus finishedWithError =
      ExecutionInfo_CommandStatus._(3, 'finishedWithError');

  static const $core.List<ExecutionInfo_CommandStatus> values =
      <ExecutionInfo_CommandStatus>[
    waiting,
    running,
    finishedSuccessfully,
    finishedWithError,
  ];

  static final $core.Map<$core.int, ExecutionInfo_CommandStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ExecutionInfo_CommandStatus valueOf($core.int value) =>
      _byValue[value];

  const ExecutionInfo_CommandStatus._($core.int v, $core.String n)
      : super(v, n);
}

class FrameworkError_ErrorType extends $pb.ProtobufEnum {
  static const FrameworkError_ErrorType COMMAND_EXECUTION_NOT_ACCEPTED =
      FrameworkError_ErrorType._(0, 'COMMAND_EXECUTION_NOT_ACCEPTED');
  static const FrameworkError_ErrorType INVALID_COMMAND_EXECUTION_UUID =
      FrameworkError_ErrorType._(1, 'INVALID_COMMAND_EXECUTION_UUID');
  static const FrameworkError_ErrorType COMMAND_EXECUTION_NOT_FINISHED =
      FrameworkError_ErrorType._(2, 'COMMAND_EXECUTION_NOT_FINISHED');

  static const $core.List<FrameworkError_ErrorType> values =
      <FrameworkError_ErrorType>[
    COMMAND_EXECUTION_NOT_ACCEPTED,
    INVALID_COMMAND_EXECUTION_UUID,
    COMMAND_EXECUTION_NOT_FINISHED,
  ];

  static final $core.Map<$core.int, FrameworkError_ErrorType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FrameworkError_ErrorType valueOf($core.int value) => _byValue[value];

  const FrameworkError_ErrorType._($core.int v, $core.String n) : super(v, n);
}
