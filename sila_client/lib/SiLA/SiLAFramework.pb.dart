///
//  Generated code. Do not modify.
//  source: SiLAFramework.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,deprecated_member_use

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'SiLAFramework.pbenum.dart';

export 'SiLAFramework.pbenum.dart';

class String extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('String',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..aOS(1, 'value')
    ..hasRequiredFields = false;

  String._() : super();
  factory String() => create();
  factory String.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory String.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  String clone() => String()..mergeFromMessage(this);
  String copyWith(void Function(String) updates) =>
      super.copyWith((message) => updates(message as String));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static String create() => String._();
  String createEmptyInstance() => create();
  static $pb.PbList<String> createRepeated() => $pb.PbList<String>();
  static String getDefault() => _defaultInstance ??= create()..freeze();
  static String _defaultInstance;

  $core.String get value => $_getS(0, '');
  set value($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}

class Integer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Integer',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..aInt64(1, 'value')
    ..hasRequiredFields = false;

  Integer._() : super();
  factory Integer() => create();
  factory Integer.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Integer.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Integer clone() => Integer()..mergeFromMessage(this);
  Integer copyWith(void Function(Integer) updates) =>
      super.copyWith((message) => updates(message as Integer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Integer create() => Integer._();
  Integer createEmptyInstance() => create();
  static $pb.PbList<Integer> createRepeated() => $pb.PbList<Integer>();
  static Integer getDefault() => _defaultInstance ??= create()..freeze();
  static Integer _defaultInstance;

  Int64 get value => $_getI64(0);
  set value(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}

class Real extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Real',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..a<$core.double>(1, 'value', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  Real._() : super();
  factory Real() => create();
  factory Real.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Real.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Real clone() => Real()..mergeFromMessage(this);
  Real copyWith(void Function(Real) updates) =>
      super.copyWith((message) => updates(message as Real));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Real create() => Real._();
  Real createEmptyInstance() => create();
  static $pb.PbList<Real> createRepeated() => $pb.PbList<Real>();
  static Real getDefault() => _defaultInstance ??= create()..freeze();
  static Real _defaultInstance;

  $core.double get value => $_getN(0);
  set value($core.double v) {
    $_setDouble(0, v);
  }

  $core.bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}

class Boolean extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Boolean',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..aOB(1, 'value')
    ..hasRequiredFields = false;

  Boolean._() : super();
  factory Boolean() => create();
  factory Boolean.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Boolean.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Boolean clone() => Boolean()..mergeFromMessage(this);
  Boolean copyWith(void Function(Boolean) updates) =>
      super.copyWith((message) => updates(message as Boolean));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Boolean create() => Boolean._();
  Boolean createEmptyInstance() => create();
  static $pb.PbList<Boolean> createRepeated() => $pb.PbList<Boolean>();
  static Boolean getDefault() => _defaultInstance ??= create()..freeze();
  static Boolean _defaultInstance;

  $core.bool get value => $_get(0, false);
  set value($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}

class SmallBinary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SmallBinary',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  SmallBinary._() : super();
  factory SmallBinary() => create();
  factory SmallBinary.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SmallBinary.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SmallBinary clone() => SmallBinary()..mergeFromMessage(this);
  SmallBinary copyWith(void Function(SmallBinary) updates) =>
      super.copyWith((message) => updates(message as SmallBinary));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmallBinary create() => SmallBinary._();
  SmallBinary createEmptyInstance() => create();
  static $pb.PbList<SmallBinary> createRepeated() => $pb.PbList<SmallBinary>();
  static SmallBinary getDefault() => _defaultInstance ??= create()..freeze();
  static SmallBinary _defaultInstance;

  $core.List<$core.int> get value => $_getN(0);
  set value($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}

class Date extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Date',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..a<$core.int>(1, 'day', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'year', $pb.PbFieldType.OU3)
    ..a<Timezone>(4, 'timezone', $pb.PbFieldType.OM,
        defaultOrMaker: Timezone.getDefault, subBuilder: Timezone.create)
    ..hasRequiredFields = false;

  Date._() : super();
  factory Date() => create();
  factory Date.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Date.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Date clone() => Date()..mergeFromMessage(this);
  Date copyWith(void Function(Date) updates) =>
      super.copyWith((message) => updates(message as Date));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Date create() => Date._();
  Date createEmptyInstance() => create();
  static $pb.PbList<Date> createRepeated() => $pb.PbList<Date>();
  static Date getDefault() => _defaultInstance ??= create()..freeze();
  static Date _defaultInstance;

  $core.int get day => $_get(0, 0);
  set day($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  $core.bool hasDay() => $_has(0);
  void clearDay() => clearField(1);

  $core.int get month => $_get(1, 0);
  set month($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  $core.bool hasMonth() => $_has(1);
  void clearMonth() => clearField(2);

  $core.int get year => $_get(2, 0);
  set year($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasYear() => $_has(2);
  void clearYear() => clearField(3);

  Timezone get timezone => $_getN(3);
  set timezone(Timezone v) {
    setField(4, v);
  }

  $core.bool hasTimezone() => $_has(3);
  void clearTimezone() => clearField(4);
}

class Time extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Time',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..a<$core.int>(1, 'second', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'minute', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'hour', $pb.PbFieldType.OU3)
    ..a<Timezone>(4, 'timezone', $pb.PbFieldType.OM,
        defaultOrMaker: Timezone.getDefault, subBuilder: Timezone.create)
    ..hasRequiredFields = false;

  Time._() : super();
  factory Time() => create();
  factory Time.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Time.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Time clone() => Time()..mergeFromMessage(this);
  Time copyWith(void Function(Time) updates) =>
      super.copyWith((message) => updates(message as Time));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Time create() => Time._();
  Time createEmptyInstance() => create();
  static $pb.PbList<Time> createRepeated() => $pb.PbList<Time>();
  static Time getDefault() => _defaultInstance ??= create()..freeze();
  static Time _defaultInstance;

  $core.int get second => $_get(0, 0);
  set second($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  $core.bool hasSecond() => $_has(0);
  void clearSecond() => clearField(1);

  $core.int get minute => $_get(1, 0);
  set minute($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  $core.bool hasMinute() => $_has(1);
  void clearMinute() => clearField(2);

  $core.int get hour => $_get(2, 0);
  set hour($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasHour() => $_has(2);
  void clearHour() => clearField(3);

  Timezone get timezone => $_getN(3);
  set timezone(Timezone v) {
    setField(4, v);
  }

  $core.bool hasTimezone() => $_has(3);
  void clearTimezone() => clearField(4);
}

class Timestamp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Timestamp',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..a<$core.int>(1, 'second', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'minute', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'hour', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'day', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'year', $pb.PbFieldType.OU3)
    ..a<Timezone>(7, 'timezone', $pb.PbFieldType.OM,
        defaultOrMaker: Timezone.getDefault, subBuilder: Timezone.create)
    ..hasRequiredFields = false;

  Timestamp._() : super();
  factory Timestamp() => create();
  factory Timestamp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Timestamp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Timestamp clone() => Timestamp()..mergeFromMessage(this);
  Timestamp copyWith(void Function(Timestamp) updates) =>
      super.copyWith((message) => updates(message as Timestamp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Timestamp create() => Timestamp._();
  Timestamp createEmptyInstance() => create();
  static $pb.PbList<Timestamp> createRepeated() => $pb.PbList<Timestamp>();
  static Timestamp getDefault() => _defaultInstance ??= create()..freeze();
  static Timestamp _defaultInstance;

  $core.int get second => $_get(0, 0);
  set second($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  $core.bool hasSecond() => $_has(0);
  void clearSecond() => clearField(1);

  $core.int get minute => $_get(1, 0);
  set minute($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  $core.bool hasMinute() => $_has(1);
  void clearMinute() => clearField(2);

  $core.int get hour => $_get(2, 0);
  set hour($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasHour() => $_has(2);
  void clearHour() => clearField(3);

  $core.int get day => $_get(3, 0);
  set day($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  $core.bool hasDay() => $_has(3);
  void clearDay() => clearField(4);

  $core.int get month => $_get(4, 0);
  set month($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  $core.bool hasMonth() => $_has(4);
  void clearMonth() => clearField(5);

  $core.int get year => $_get(5, 0);
  set year($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  $core.bool hasYear() => $_has(5);
  void clearYear() => clearField(6);

  Timezone get timezone => $_getN(6);
  set timezone(Timezone v) {
    setField(7, v);
  }

  $core.bool hasTimezone() => $_has(6);
  void clearTimezone() => clearField(7);
}

class Timezone extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Timezone',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..a<$core.int>(1, 'hours', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'minutes', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  Timezone._() : super();
  factory Timezone() => create();
  factory Timezone.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Timezone.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Timezone clone() => Timezone()..mergeFromMessage(this);
  Timezone copyWith(void Function(Timezone) updates) =>
      super.copyWith((message) => updates(message as Timezone));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Timezone create() => Timezone._();
  Timezone createEmptyInstance() => create();
  static $pb.PbList<Timezone> createRepeated() => $pb.PbList<Timezone>();
  static Timezone getDefault() => _defaultInstance ??= create()..freeze();
  static Timezone _defaultInstance;

  $core.int get hours => $_get(0, 0);
  set hours($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasHours() => $_has(0);
  void clearHours() => clearField(1);

  $core.int get minutes => $_get(1, 0);
  set minutes($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  $core.bool hasMinutes() => $_has(1);
  void clearMinutes() => clearField(2);
}

class Duration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Duration',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..aInt64(1, 'seconds')
    ..a<$core.int>(2, 'nanos', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  Duration._() : super();
  factory Duration() => create();
  factory Duration.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Duration.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Duration clone() => Duration()..mergeFromMessage(this);
  Duration copyWith(void Function(Duration) updates) =>
      super.copyWith((message) => updates(message as Duration));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Duration create() => Duration._();
  Duration createEmptyInstance() => create();
  static $pb.PbList<Duration> createRepeated() => $pb.PbList<Duration>();
  static Duration getDefault() => _defaultInstance ??= create()..freeze();
  static Duration _defaultInstance;

  Int64 get seconds => $_getI64(0);
  set seconds(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasSeconds() => $_has(0);
  void clearSeconds() => clearField(1);

  $core.int get nanos => $_get(1, 0);
  set nanos($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasNanos() => $_has(1);
  void clearNanos() => clearField(2);
}

class CommandExecutionUUID extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CommandExecutionUUID',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..aOS(1, 'commandId', protoName: 'commandId')
    ..hasRequiredFields = false;

  CommandExecutionUUID._() : super();
  factory CommandExecutionUUID() => create();
  factory CommandExecutionUUID.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CommandExecutionUUID.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CommandExecutionUUID clone() =>
      CommandExecutionUUID()..mergeFromMessage(this);
  CommandExecutionUUID copyWith(void Function(CommandExecutionUUID) updates) =>
      super.copyWith((message) => updates(message as CommandExecutionUUID));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandExecutionUUID create() => CommandExecutionUUID._();
  CommandExecutionUUID createEmptyInstance() => create();
  static $pb.PbList<CommandExecutionUUID> createRepeated() =>
      $pb.PbList<CommandExecutionUUID>();
  static CommandExecutionUUID getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CommandExecutionUUID _defaultInstance;

  $core.String get commandId => $_getS(0, '');
  set commandId($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasCommandId() => $_has(0);
  void clearCommandId() => clearField(1);
}

class CommandConfirmation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CommandConfirmation',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..a<CommandExecutionUUID>(1, 'commandId', $pb.PbFieldType.OM,
        protoName: 'commandId',
        defaultOrMaker: CommandExecutionUUID.getDefault,
        subBuilder: CommandExecutionUUID.create)
    ..a<Duration>(2, 'lifetimeOfExecution', $pb.PbFieldType.OM,
        protoName: 'lifetimeOfExecution',
        defaultOrMaker: Duration.getDefault,
        subBuilder: Duration.create)
    ..hasRequiredFields = false;

  CommandConfirmation._() : super();
  factory CommandConfirmation() => create();
  factory CommandConfirmation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CommandConfirmation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CommandConfirmation clone() => CommandConfirmation()..mergeFromMessage(this);
  CommandConfirmation copyWith(void Function(CommandConfirmation) updates) =>
      super.copyWith((message) => updates(message as CommandConfirmation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandConfirmation create() => CommandConfirmation._();
  CommandConfirmation createEmptyInstance() => create();
  static $pb.PbList<CommandConfirmation> createRepeated() =>
      $pb.PbList<CommandConfirmation>();
  static CommandConfirmation getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CommandConfirmation _defaultInstance;

  CommandExecutionUUID get commandId => $_getN(0);
  set commandId(CommandExecutionUUID v) {
    setField(1, v);
  }

  $core.bool hasCommandId() => $_has(0);
  void clearCommandId() => clearField(1);

  Duration get lifetimeOfExecution => $_getN(1);
  set lifetimeOfExecution(Duration v) {
    setField(2, v);
  }

  $core.bool hasLifetimeOfExecution() => $_has(1);
  void clearLifetimeOfExecution() => clearField(2);
}

class ExecutionInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExecutionInfo',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..e<ExecutionInfo_CommandStatus>(1, 'commandStatus', $pb.PbFieldType.OE,
        protoName: 'commandStatus',
        defaultOrMaker: ExecutionInfo_CommandStatus.waiting,
        valueOf: ExecutionInfo_CommandStatus.valueOf,
        enumValues: ExecutionInfo_CommandStatus.values)
    ..a<Real>(2, 'progressInfo', $pb.PbFieldType.OM,
        protoName: 'progressInfo',
        defaultOrMaker: Real.getDefault,
        subBuilder: Real.create)
    ..a<Duration>(3, 'estimatedRemainingTime', $pb.PbFieldType.OM,
        protoName: 'estimatedRemainingTime',
        defaultOrMaker: Duration.getDefault,
        subBuilder: Duration.create)
    ..a<Duration>(4, 'updatedLifetimeOfExecution', $pb.PbFieldType.OM,
        protoName: 'updatedLifetimeOfExecution',
        defaultOrMaker: Duration.getDefault,
        subBuilder: Duration.create)
    ..hasRequiredFields = false;

  ExecutionInfo._() : super();
  factory ExecutionInfo() => create();
  factory ExecutionInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExecutionInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ExecutionInfo clone() => ExecutionInfo()..mergeFromMessage(this);
  ExecutionInfo copyWith(void Function(ExecutionInfo) updates) =>
      super.copyWith((message) => updates(message as ExecutionInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExecutionInfo create() => ExecutionInfo._();
  ExecutionInfo createEmptyInstance() => create();
  static $pb.PbList<ExecutionInfo> createRepeated() =>
      $pb.PbList<ExecutionInfo>();
  static ExecutionInfo getDefault() => _defaultInstance ??= create()..freeze();
  static ExecutionInfo _defaultInstance;

  ExecutionInfo_CommandStatus get commandStatus => $_getN(0);
  set commandStatus(ExecutionInfo_CommandStatus v) {
    setField(1, v);
  }

  $core.bool hasCommandStatus() => $_has(0);
  void clearCommandStatus() => clearField(1);

  Real get progressInfo => $_getN(1);
  set progressInfo(Real v) {
    setField(2, v);
  }

  $core.bool hasProgressInfo() => $_has(1);
  void clearProgressInfo() => clearField(2);

  Duration get estimatedRemainingTime => $_getN(2);
  set estimatedRemainingTime(Duration v) {
    setField(3, v);
  }

  $core.bool hasEstimatedRemainingTime() => $_has(2);
  void clearEstimatedRemainingTime() => clearField(3);

  Duration get updatedLifetimeOfExecution => $_getN(3);
  set updatedLifetimeOfExecution(Duration v) {
    setField(4, v);
  }

  $core.bool hasUpdatedLifetimeOfExecution() => $_has(3);
  void clearUpdatedLifetimeOfExecution() => clearField(4);
}

enum SiLAError_Error {
  validationError,
  executionError,
  readError,
  frameworkError,
  notSet
}

class SiLAError extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SiLAError_Error> _SiLAError_ErrorByTag = {
    1: SiLAError_Error.validationError,
    2: SiLAError_Error.executionError,
    3: SiLAError_Error.readError,
    4: SiLAError_Error.frameworkError,
    0: SiLAError_Error.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SiLAError',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..a<ValidationError>(1, 'validationError', $pb.PbFieldType.OM,
        protoName: 'validationError',
        defaultOrMaker: ValidationError.getDefault,
        subBuilder: ValidationError.create)
    ..a<ExecutionError>(2, 'executionError', $pb.PbFieldType.OM,
        protoName: 'executionError',
        defaultOrMaker: ExecutionError.getDefault,
        subBuilder: ExecutionError.create)
    ..a<ReadError>(3, 'readError', $pb.PbFieldType.OM,
        protoName: 'readError',
        defaultOrMaker: ReadError.getDefault,
        subBuilder: ReadError.create)
    ..a<FrameworkError>(4, 'frameworkError', $pb.PbFieldType.OM,
        protoName: 'frameworkError',
        defaultOrMaker: FrameworkError.getDefault,
        subBuilder: FrameworkError.create)
    ..hasRequiredFields = false;

  SiLAError._() : super();
  factory SiLAError() => create();
  factory SiLAError.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SiLAError.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SiLAError clone() => SiLAError()..mergeFromMessage(this);
  SiLAError copyWith(void Function(SiLAError) updates) =>
      super.copyWith((message) => updates(message as SiLAError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SiLAError create() => SiLAError._();
  SiLAError createEmptyInstance() => create();
  static $pb.PbList<SiLAError> createRepeated() => $pb.PbList<SiLAError>();
  static SiLAError getDefault() => _defaultInstance ??= create()..freeze();
  static SiLAError _defaultInstance;

  SiLAError_Error whichError() => _SiLAError_ErrorByTag[$_whichOneof(0)];
  void clearError() => clearField($_whichOneof(0));

  ValidationError get validationError => $_getN(0);
  set validationError(ValidationError v) {
    setField(1, v);
  }

  $core.bool hasValidationError() => $_has(0);
  void clearValidationError() => clearField(1);

  ExecutionError get executionError => $_getN(1);
  set executionError(ExecutionError v) {
    setField(2, v);
  }

  $core.bool hasExecutionError() => $_has(1);
  void clearExecutionError() => clearField(2);

  ReadError get readError => $_getN(2);
  set readError(ReadError v) {
    setField(3, v);
  }

  $core.bool hasReadError() => $_has(2);
  void clearReadError() => clearField(3);

  FrameworkError get frameworkError => $_getN(3);
  set frameworkError(FrameworkError v) {
    setField(4, v);
  }

  $core.bool hasFrameworkError() => $_has(3);
  void clearFrameworkError() => clearField(4);
}

class ValidationError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ValidationError',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..aOS(1, 'parameter')
    ..aOS(2, 'cause')
    ..aOS(3, 'action')
    ..hasRequiredFields = false;

  ValidationError._() : super();
  factory ValidationError() => create();
  factory ValidationError.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ValidationError.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ValidationError clone() => ValidationError()..mergeFromMessage(this);
  ValidationError copyWith(void Function(ValidationError) updates) =>
      super.copyWith((message) => updates(message as ValidationError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidationError create() => ValidationError._();
  ValidationError createEmptyInstance() => create();
  static $pb.PbList<ValidationError> createRepeated() =>
      $pb.PbList<ValidationError>();
  static ValidationError getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ValidationError _defaultInstance;

  $core.String get parameter => $_getS(0, '');
  set parameter($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasParameter() => $_has(0);
  void clearParameter() => clearField(1);

  $core.String get cause => $_getS(1, '');
  set cause($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasCause() => $_has(1);
  void clearCause() => clearField(2);

  $core.String get action => $_getS(2, '');
  set action($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasAction() => $_has(2);
  void clearAction() => clearField(3);
}

class ExecutionError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExecutionError',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..aOS(1, 'errorIdentifier', protoName: 'errorIdentifier')
    ..aOS(2, 'cause')
    ..aOS(3, 'action')
    ..hasRequiredFields = false;

  ExecutionError._() : super();
  factory ExecutionError() => create();
  factory ExecutionError.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExecutionError.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ExecutionError clone() => ExecutionError()..mergeFromMessage(this);
  ExecutionError copyWith(void Function(ExecutionError) updates) =>
      super.copyWith((message) => updates(message as ExecutionError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExecutionError create() => ExecutionError._();
  ExecutionError createEmptyInstance() => create();
  static $pb.PbList<ExecutionError> createRepeated() =>
      $pb.PbList<ExecutionError>();
  static ExecutionError getDefault() => _defaultInstance ??= create()..freeze();
  static ExecutionError _defaultInstance;

  $core.String get errorIdentifier => $_getS(0, '');
  set errorIdentifier($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasErrorIdentifier() => $_has(0);
  void clearErrorIdentifier() => clearField(1);

  $core.String get cause => $_getS(1, '');
  set cause($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasCause() => $_has(1);
  void clearCause() => clearField(2);

  $core.String get action => $_getS(2, '');
  set action($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasAction() => $_has(2);
  void clearAction() => clearField(3);
}

class ReadError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadError',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..aOS(1, 'errorIdentifier', protoName: 'errorIdentifier')
    ..aOS(2, 'cause')
    ..aOS(3, 'action')
    ..hasRequiredFields = false;

  ReadError._() : super();
  factory ReadError() => create();
  factory ReadError.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadError.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ReadError clone() => ReadError()..mergeFromMessage(this);
  ReadError copyWith(void Function(ReadError) updates) =>
      super.copyWith((message) => updates(message as ReadError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadError create() => ReadError._();
  ReadError createEmptyInstance() => create();
  static $pb.PbList<ReadError> createRepeated() => $pb.PbList<ReadError>();
  static ReadError getDefault() => _defaultInstance ??= create()..freeze();
  static ReadError _defaultInstance;

  $core.String get errorIdentifier => $_getS(0, '');
  set errorIdentifier($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasErrorIdentifier() => $_has(0);
  void clearErrorIdentifier() => clearField(1);

  $core.String get cause => $_getS(1, '');
  set cause($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasCause() => $_has(1);
  void clearCause() => clearField(2);

  $core.String get action => $_getS(2, '');
  set action($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasAction() => $_has(2);
  void clearAction() => clearField(3);
}

class FrameworkError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FrameworkError',
      package: const $pb.PackageName('sila2.org.silastandard'),
      createEmptyInstance: create)
    ..e<FrameworkError_ErrorType>(1, 'errorType', $pb.PbFieldType.OE,
        protoName: 'errorType',
        defaultOrMaker: FrameworkError_ErrorType.COMMAND_EXECUTION_NOT_ACCEPTED,
        valueOf: FrameworkError_ErrorType.valueOf,
        enumValues: FrameworkError_ErrorType.values)
    ..hasRequiredFields = false;

  FrameworkError._() : super();
  factory FrameworkError() => create();
  factory FrameworkError.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FrameworkError.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FrameworkError clone() => FrameworkError()..mergeFromMessage(this);
  FrameworkError copyWith(void Function(FrameworkError) updates) =>
      super.copyWith((message) => updates(message as FrameworkError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FrameworkError create() => FrameworkError._();
  FrameworkError createEmptyInstance() => create();
  static $pb.PbList<FrameworkError> createRepeated() =>
      $pb.PbList<FrameworkError>();
  static FrameworkError getDefault() => _defaultInstance ??= create()..freeze();
  static FrameworkError _defaultInstance;

  FrameworkError_ErrorType get errorType => $_getN(0);
  set errorType(FrameworkError_ErrorType v) {
    setField(1, v);
  }

  $core.bool hasErrorType() => $_has(0);
  void clearErrorType() => clearField(1);
}
