///
//  Generated code. Do not modify.
//  source: SiLAService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,deprecated_member_use

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'SiLAFramework.pb.dart' as $1;

class DataType_FeatureIdentifier extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DataType_FeatureIdentifier',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<$1.String>(1, 'FeatureIdentifier', $pb.PbFieldType.OM,
        protoName: 'FeatureIdentifier',
        defaultOrMaker: $1.String.getDefault,
        subBuilder: $1.String.create)
    ..hasRequiredFields = false;

  DataType_FeatureIdentifier._() : super();
  factory DataType_FeatureIdentifier() => create();
  factory DataType_FeatureIdentifier.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DataType_FeatureIdentifier.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DataType_FeatureIdentifier clone() =>
      DataType_FeatureIdentifier()..mergeFromMessage(this);
  DataType_FeatureIdentifier copyWith(
          void Function(DataType_FeatureIdentifier) updates) =>
      super.copyWith(
          (message) => updates(message as DataType_FeatureIdentifier));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataType_FeatureIdentifier create() => DataType_FeatureIdentifier._();
  DataType_FeatureIdentifier createEmptyInstance() => create();
  static $pb.PbList<DataType_FeatureIdentifier> createRepeated() =>
      $pb.PbList<DataType_FeatureIdentifier>();
  static DataType_FeatureIdentifier getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DataType_FeatureIdentifier _defaultInstance;

  $1.String get featureIdentifier => $_getN(0);
  set featureIdentifier($1.String v) {
    setField(1, v);
  }

  $core.bool hasFeatureIdentifier() => $_has(0);
  void clearFeatureIdentifier() => clearField(1);
}

class DataType_FeatureDefinition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DataType_FeatureDefinition',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<$1.String>(1, 'FeatureDefinition', $pb.PbFieldType.OM,
        protoName: 'FeatureDefinition',
        defaultOrMaker: $1.String.getDefault,
        subBuilder: $1.String.create)
    ..hasRequiredFields = false;

  DataType_FeatureDefinition._() : super();
  factory DataType_FeatureDefinition() => create();
  factory DataType_FeatureDefinition.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DataType_FeatureDefinition.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DataType_FeatureDefinition clone() =>
      DataType_FeatureDefinition()..mergeFromMessage(this);
  DataType_FeatureDefinition copyWith(
          void Function(DataType_FeatureDefinition) updates) =>
      super.copyWith(
          (message) => updates(message as DataType_FeatureDefinition));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataType_FeatureDefinition create() => DataType_FeatureDefinition._();
  DataType_FeatureDefinition createEmptyInstance() => create();
  static $pb.PbList<DataType_FeatureDefinition> createRepeated() =>
      $pb.PbList<DataType_FeatureDefinition>();
  static DataType_FeatureDefinition getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DataType_FeatureDefinition _defaultInstance;

  $1.String get featureDefinition => $_getN(0);
  set featureDefinition($1.String v) {
    setField(1, v);
  }

  $core.bool hasFeatureDefinition() => $_has(0);
  void clearFeatureDefinition() => clearField(1);
}

class DataType_URL extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DataType_URL',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<$1.String>(1, 'URL', $pb.PbFieldType.OM,
        protoName: 'URL',
        defaultOrMaker: $1.String.getDefault,
        subBuilder: $1.String.create)
    ..hasRequiredFields = false;

  DataType_URL._() : super();
  factory DataType_URL() => create();
  factory DataType_URL.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DataType_URL.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DataType_URL clone() => DataType_URL()..mergeFromMessage(this);
  DataType_URL copyWith(void Function(DataType_URL) updates) =>
      super.copyWith((message) => updates(message as DataType_URL));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataType_URL create() => DataType_URL._();
  DataType_URL createEmptyInstance() => create();
  static $pb.PbList<DataType_URL> createRepeated() =>
      $pb.PbList<DataType_URL>();
  static DataType_URL getDefault() => _defaultInstance ??= create()..freeze();
  static DataType_URL _defaultInstance;

  $1.String get uRL => $_getN(0);
  set uRL($1.String v) {
    setField(1, v);
  }

  $core.bool hasURL() => $_has(0);
  void clearURL() => clearField(1);
}

class GetFeatureDefinition_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'GetFeatureDefinition_Parameters',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<DataType_FeatureIdentifier>(
        1, 'QualifiedFeatureIdentifier', $pb.PbFieldType.OM,
        protoName: 'QualifiedFeatureIdentifier',
        defaultOrMaker: DataType_FeatureIdentifier.getDefault,
        subBuilder: DataType_FeatureIdentifier.create)
    ..hasRequiredFields = false;

  GetFeatureDefinition_Parameters._() : super();
  factory GetFeatureDefinition_Parameters() => create();
  factory GetFeatureDefinition_Parameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetFeatureDefinition_Parameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetFeatureDefinition_Parameters clone() =>
      GetFeatureDefinition_Parameters()..mergeFromMessage(this);
  GetFeatureDefinition_Parameters copyWith(
          void Function(GetFeatureDefinition_Parameters) updates) =>
      super.copyWith(
          (message) => updates(message as GetFeatureDefinition_Parameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFeatureDefinition_Parameters create() =>
      GetFeatureDefinition_Parameters._();
  GetFeatureDefinition_Parameters createEmptyInstance() => create();
  static $pb.PbList<GetFeatureDefinition_Parameters> createRepeated() =>
      $pb.PbList<GetFeatureDefinition_Parameters>();
  static GetFeatureDefinition_Parameters getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GetFeatureDefinition_Parameters _defaultInstance;

  DataType_FeatureIdentifier get qualifiedFeatureIdentifier => $_getN(0);
  set qualifiedFeatureIdentifier(DataType_FeatureIdentifier v) {
    setField(1, v);
  }

  $core.bool hasQualifiedFeatureIdentifier() => $_has(0);
  void clearQualifiedFeatureIdentifier() => clearField(1);
}

class GetFeatureDefinition_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'GetFeatureDefinition_Responses',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<DataType_FeatureDefinition>(1, 'FeatureDefinition', $pb.PbFieldType.OM,
        protoName: 'FeatureDefinition',
        defaultOrMaker: DataType_FeatureDefinition.getDefault,
        subBuilder: DataType_FeatureDefinition.create)
    ..hasRequiredFields = false;

  GetFeatureDefinition_Responses._() : super();
  factory GetFeatureDefinition_Responses() => create();
  factory GetFeatureDefinition_Responses.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetFeatureDefinition_Responses.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetFeatureDefinition_Responses clone() =>
      GetFeatureDefinition_Responses()..mergeFromMessage(this);
  GetFeatureDefinition_Responses copyWith(
          void Function(GetFeatureDefinition_Responses) updates) =>
      super.copyWith(
          (message) => updates(message as GetFeatureDefinition_Responses));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFeatureDefinition_Responses create() =>
      GetFeatureDefinition_Responses._();
  GetFeatureDefinition_Responses createEmptyInstance() => create();
  static $pb.PbList<GetFeatureDefinition_Responses> createRepeated() =>
      $pb.PbList<GetFeatureDefinition_Responses>();
  static GetFeatureDefinition_Responses getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GetFeatureDefinition_Responses _defaultInstance;

  DataType_FeatureDefinition get featureDefinition => $_getN(0);
  set featureDefinition(DataType_FeatureDefinition v) {
    setField(1, v);
  }

  $core.bool hasFeatureDefinition() => $_has(0);
  void clearFeatureDefinition() => clearField(1);
}

class SetServerName_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SetServerName_Parameters',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<$1.String>(1, 'ServerName', $pb.PbFieldType.OM,
        protoName: 'ServerName',
        defaultOrMaker: $1.String.getDefault,
        subBuilder: $1.String.create)
    ..hasRequiredFields = false;

  SetServerName_Parameters._() : super();
  factory SetServerName_Parameters() => create();
  factory SetServerName_Parameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetServerName_Parameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SetServerName_Parameters clone() =>
      SetServerName_Parameters()..mergeFromMessage(this);
  SetServerName_Parameters copyWith(
          void Function(SetServerName_Parameters) updates) =>
      super.copyWith((message) => updates(message as SetServerName_Parameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetServerName_Parameters create() => SetServerName_Parameters._();
  SetServerName_Parameters createEmptyInstance() => create();
  static $pb.PbList<SetServerName_Parameters> createRepeated() =>
      $pb.PbList<SetServerName_Parameters>();
  static SetServerName_Parameters getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SetServerName_Parameters _defaultInstance;

  $1.String get serverName => $_getN(0);
  set serverName($1.String v) {
    setField(1, v);
  }

  $core.bool hasServerName() => $_has(0);
  void clearServerName() => clearField(1);
}

class SetServerName_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SetServerName_Responses',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  SetServerName_Responses._() : super();
  factory SetServerName_Responses() => create();
  factory SetServerName_Responses.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetServerName_Responses.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SetServerName_Responses clone() =>
      SetServerName_Responses()..mergeFromMessage(this);
  SetServerName_Responses copyWith(
          void Function(SetServerName_Responses) updates) =>
      super.copyWith((message) => updates(message as SetServerName_Responses));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetServerName_Responses create() => SetServerName_Responses._();
  SetServerName_Responses createEmptyInstance() => create();
  static $pb.PbList<SetServerName_Responses> createRepeated() =>
      $pb.PbList<SetServerName_Responses>();
  static SetServerName_Responses getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SetServerName_Responses _defaultInstance;
}

class Get_ServerName_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Get_ServerName_Parameters',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  Get_ServerName_Parameters._() : super();
  factory Get_ServerName_Parameters() => create();
  factory Get_ServerName_Parameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerName_Parameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerName_Parameters clone() =>
      Get_ServerName_Parameters()..mergeFromMessage(this);
  Get_ServerName_Parameters copyWith(
          void Function(Get_ServerName_Parameters) updates) =>
      super
          .copyWith((message) => updates(message as Get_ServerName_Parameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerName_Parameters create() => Get_ServerName_Parameters._();
  Get_ServerName_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerName_Parameters> createRepeated() =>
      $pb.PbList<Get_ServerName_Parameters>();
  static Get_ServerName_Parameters getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerName_Parameters _defaultInstance;
}

class Get_ServerName_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Get_ServerName_Responses',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<$1.String>(1, 'ServerName', $pb.PbFieldType.OM,
        protoName: 'ServerName',
        defaultOrMaker: $1.String.getDefault,
        subBuilder: $1.String.create)
    ..hasRequiredFields = false;

  Get_ServerName_Responses._() : super();
  factory Get_ServerName_Responses() => create();
  factory Get_ServerName_Responses.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerName_Responses.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerName_Responses clone() =>
      Get_ServerName_Responses()..mergeFromMessage(this);
  Get_ServerName_Responses copyWith(
          void Function(Get_ServerName_Responses) updates) =>
      super.copyWith((message) => updates(message as Get_ServerName_Responses));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerName_Responses create() => Get_ServerName_Responses._();
  Get_ServerName_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerName_Responses> createRepeated() =>
      $pb.PbList<Get_ServerName_Responses>();
  static Get_ServerName_Responses getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerName_Responses _defaultInstance;

  $1.String get serverName => $_getN(0);
  set serverName($1.String v) {
    setField(1, v);
  }

  $core.bool hasServerName() => $_has(0);
  void clearServerName() => clearField(1);
}

class Get_ServerType_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Get_ServerType_Parameters',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  Get_ServerType_Parameters._() : super();
  factory Get_ServerType_Parameters() => create();
  factory Get_ServerType_Parameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerType_Parameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerType_Parameters clone() =>
      Get_ServerType_Parameters()..mergeFromMessage(this);
  Get_ServerType_Parameters copyWith(
          void Function(Get_ServerType_Parameters) updates) =>
      super
          .copyWith((message) => updates(message as Get_ServerType_Parameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerType_Parameters create() => Get_ServerType_Parameters._();
  Get_ServerType_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerType_Parameters> createRepeated() =>
      $pb.PbList<Get_ServerType_Parameters>();
  static Get_ServerType_Parameters getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerType_Parameters _defaultInstance;
}

class Get_ServerType_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Get_ServerType_Responses',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<$1.String>(1, 'ServerType', $pb.PbFieldType.OM,
        protoName: 'ServerType',
        defaultOrMaker: $1.String.getDefault,
        subBuilder: $1.String.create)
    ..hasRequiredFields = false;

  Get_ServerType_Responses._() : super();
  factory Get_ServerType_Responses() => create();
  factory Get_ServerType_Responses.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerType_Responses.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerType_Responses clone() =>
      Get_ServerType_Responses()..mergeFromMessage(this);
  Get_ServerType_Responses copyWith(
          void Function(Get_ServerType_Responses) updates) =>
      super.copyWith((message) => updates(message as Get_ServerType_Responses));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerType_Responses create() => Get_ServerType_Responses._();
  Get_ServerType_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerType_Responses> createRepeated() =>
      $pb.PbList<Get_ServerType_Responses>();
  static Get_ServerType_Responses getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerType_Responses _defaultInstance;

  $1.String get serverType => $_getN(0);
  set serverType($1.String v) {
    setField(1, v);
  }

  $core.bool hasServerType() => $_has(0);
  void clearServerType() => clearField(1);
}

class Get_ServerUUID_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Get_ServerUUID_Parameters',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  Get_ServerUUID_Parameters._() : super();
  factory Get_ServerUUID_Parameters() => create();
  factory Get_ServerUUID_Parameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerUUID_Parameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerUUID_Parameters clone() =>
      Get_ServerUUID_Parameters()..mergeFromMessage(this);
  Get_ServerUUID_Parameters copyWith(
          void Function(Get_ServerUUID_Parameters) updates) =>
      super
          .copyWith((message) => updates(message as Get_ServerUUID_Parameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerUUID_Parameters create() => Get_ServerUUID_Parameters._();
  Get_ServerUUID_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerUUID_Parameters> createRepeated() =>
      $pb.PbList<Get_ServerUUID_Parameters>();
  static Get_ServerUUID_Parameters getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerUUID_Parameters _defaultInstance;
}

class Get_ServerUUID_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Get_ServerUUID_Responses',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<$1.String>(1, 'ServerUUID', $pb.PbFieldType.OM,
        protoName: 'ServerUUID',
        defaultOrMaker: $1.String.getDefault,
        subBuilder: $1.String.create)
    ..hasRequiredFields = false;

  Get_ServerUUID_Responses._() : super();
  factory Get_ServerUUID_Responses() => create();
  factory Get_ServerUUID_Responses.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerUUID_Responses.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerUUID_Responses clone() =>
      Get_ServerUUID_Responses()..mergeFromMessage(this);
  Get_ServerUUID_Responses copyWith(
          void Function(Get_ServerUUID_Responses) updates) =>
      super.copyWith((message) => updates(message as Get_ServerUUID_Responses));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerUUID_Responses create() => Get_ServerUUID_Responses._();
  Get_ServerUUID_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerUUID_Responses> createRepeated() =>
      $pb.PbList<Get_ServerUUID_Responses>();
  static Get_ServerUUID_Responses getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerUUID_Responses _defaultInstance;

  $1.String get serverUUID => $_getN(0);
  set serverUUID($1.String v) {
    setField(1, v);
  }

  $core.bool hasServerUUID() => $_has(0);
  void clearServerUUID() => clearField(1);
}

class Get_ServerDescription_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'Get_ServerDescription_Parameters',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  Get_ServerDescription_Parameters._() : super();
  factory Get_ServerDescription_Parameters() => create();
  factory Get_ServerDescription_Parameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerDescription_Parameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerDescription_Parameters clone() =>
      Get_ServerDescription_Parameters()..mergeFromMessage(this);
  Get_ServerDescription_Parameters copyWith(
          void Function(Get_ServerDescription_Parameters) updates) =>
      super.copyWith(
          (message) => updates(message as Get_ServerDescription_Parameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerDescription_Parameters create() =>
      Get_ServerDescription_Parameters._();
  Get_ServerDescription_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerDescription_Parameters> createRepeated() =>
      $pb.PbList<Get_ServerDescription_Parameters>();
  static Get_ServerDescription_Parameters getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerDescription_Parameters _defaultInstance;
}

class Get_ServerDescription_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'Get_ServerDescription_Responses',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<$1.String>(1, 'ServerDescription', $pb.PbFieldType.OM,
        protoName: 'ServerDescription',
        defaultOrMaker: $1.String.getDefault,
        subBuilder: $1.String.create)
    ..hasRequiredFields = false;

  Get_ServerDescription_Responses._() : super();
  factory Get_ServerDescription_Responses() => create();
  factory Get_ServerDescription_Responses.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerDescription_Responses.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerDescription_Responses clone() =>
      Get_ServerDescription_Responses()..mergeFromMessage(this);
  Get_ServerDescription_Responses copyWith(
          void Function(Get_ServerDescription_Responses) updates) =>
      super.copyWith(
          (message) => updates(message as Get_ServerDescription_Responses));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerDescription_Responses create() =>
      Get_ServerDescription_Responses._();
  Get_ServerDescription_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerDescription_Responses> createRepeated() =>
      $pb.PbList<Get_ServerDescription_Responses>();
  static Get_ServerDescription_Responses getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerDescription_Responses _defaultInstance;

  $1.String get serverDescription => $_getN(0);
  set serverDescription($1.String v) {
    setField(1, v);
  }

  $core.bool hasServerDescription() => $_has(0);
  void clearServerDescription() => clearField(1);
}

class Get_ServerVersion_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'Get_ServerVersion_Parameters',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  Get_ServerVersion_Parameters._() : super();
  factory Get_ServerVersion_Parameters() => create();
  factory Get_ServerVersion_Parameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerVersion_Parameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerVersion_Parameters clone() =>
      Get_ServerVersion_Parameters()..mergeFromMessage(this);
  Get_ServerVersion_Parameters copyWith(
          void Function(Get_ServerVersion_Parameters) updates) =>
      super.copyWith(
          (message) => updates(message as Get_ServerVersion_Parameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerVersion_Parameters create() =>
      Get_ServerVersion_Parameters._();
  Get_ServerVersion_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerVersion_Parameters> createRepeated() =>
      $pb.PbList<Get_ServerVersion_Parameters>();
  static Get_ServerVersion_Parameters getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerVersion_Parameters _defaultInstance;
}

class Get_ServerVersion_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'Get_ServerVersion_Responses',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<$1.String>(1, 'ServerVersion', $pb.PbFieldType.OM,
        protoName: 'ServerVersion',
        defaultOrMaker: $1.String.getDefault,
        subBuilder: $1.String.create)
    ..hasRequiredFields = false;

  Get_ServerVersion_Responses._() : super();
  factory Get_ServerVersion_Responses() => create();
  factory Get_ServerVersion_Responses.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerVersion_Responses.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerVersion_Responses clone() =>
      Get_ServerVersion_Responses()..mergeFromMessage(this);
  Get_ServerVersion_Responses copyWith(
          void Function(Get_ServerVersion_Responses) updates) =>
      super.copyWith(
          (message) => updates(message as Get_ServerVersion_Responses));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerVersion_Responses create() =>
      Get_ServerVersion_Responses._();
  Get_ServerVersion_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerVersion_Responses> createRepeated() =>
      $pb.PbList<Get_ServerVersion_Responses>();
  static Get_ServerVersion_Responses getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerVersion_Responses _defaultInstance;

  $1.String get serverVersion => $_getN(0);
  set serverVersion($1.String v) {
    setField(1, v);
  }

  $core.bool hasServerVersion() => $_has(0);
  void clearServerVersion() => clearField(1);
}

class Get_ServerVendorURL_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'Get_ServerVendorURL_Parameters',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  Get_ServerVendorURL_Parameters._() : super();
  factory Get_ServerVendorURL_Parameters() => create();
  factory Get_ServerVendorURL_Parameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerVendorURL_Parameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerVendorURL_Parameters clone() =>
      Get_ServerVendorURL_Parameters()..mergeFromMessage(this);
  Get_ServerVendorURL_Parameters copyWith(
          void Function(Get_ServerVendorURL_Parameters) updates) =>
      super.copyWith(
          (message) => updates(message as Get_ServerVendorURL_Parameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerVendorURL_Parameters create() =>
      Get_ServerVendorURL_Parameters._();
  Get_ServerVendorURL_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerVendorURL_Parameters> createRepeated() =>
      $pb.PbList<Get_ServerVendorURL_Parameters>();
  static Get_ServerVendorURL_Parameters getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerVendorURL_Parameters _defaultInstance;
}

class Get_ServerVendorURL_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'Get_ServerVendorURL_Responses',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..a<DataType_URL>(1, 'ServerVendorURL', $pb.PbFieldType.OM,
        protoName: 'ServerVendorURL',
        defaultOrMaker: DataType_URL.getDefault,
        subBuilder: DataType_URL.create)
    ..hasRequiredFields = false;

  Get_ServerVendorURL_Responses._() : super();
  factory Get_ServerVendorURL_Responses() => create();
  factory Get_ServerVendorURL_Responses.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ServerVendorURL_Responses.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ServerVendorURL_Responses clone() =>
      Get_ServerVendorURL_Responses()..mergeFromMessage(this);
  Get_ServerVendorURL_Responses copyWith(
          void Function(Get_ServerVendorURL_Responses) updates) =>
      super.copyWith(
          (message) => updates(message as Get_ServerVendorURL_Responses));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerVendorURL_Responses create() =>
      Get_ServerVendorURL_Responses._();
  Get_ServerVendorURL_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerVendorURL_Responses> createRepeated() =>
      $pb.PbList<Get_ServerVendorURL_Responses>();
  static Get_ServerVendorURL_Responses getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ServerVendorURL_Responses _defaultInstance;

  DataType_URL get serverVendorURL => $_getN(0);
  set serverVendorURL(DataType_URL v) {
    setField(1, v);
  }

  $core.bool hasServerVendorURL() => $_has(0);
  void clearServerVendorURL() => clearField(1);
}

class Get_ImplementedFeatures_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'Get_ImplementedFeatures_Parameters',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  Get_ImplementedFeatures_Parameters._() : super();
  factory Get_ImplementedFeatures_Parameters() => create();
  factory Get_ImplementedFeatures_Parameters.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ImplementedFeatures_Parameters.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ImplementedFeatures_Parameters clone() =>
      Get_ImplementedFeatures_Parameters()..mergeFromMessage(this);
  Get_ImplementedFeatures_Parameters copyWith(
          void Function(Get_ImplementedFeatures_Parameters) updates) =>
      super.copyWith(
          (message) => updates(message as Get_ImplementedFeatures_Parameters));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ImplementedFeatures_Parameters create() =>
      Get_ImplementedFeatures_Parameters._();
  Get_ImplementedFeatures_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ImplementedFeatures_Parameters> createRepeated() =>
      $pb.PbList<Get_ImplementedFeatures_Parameters>();
  static Get_ImplementedFeatures_Parameters getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ImplementedFeatures_Parameters _defaultInstance;
}

class Get_ImplementedFeatures_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'Get_ImplementedFeatures_Responses',
      package:
          const $pb.PackageName('sila2.org.silastandard.core.silaservice.v1'),
      createEmptyInstance: create)
    ..pc<DataType_FeatureIdentifier>(
        1, 'ImplementedFeatures', $pb.PbFieldType.PM,
        protoName: 'ImplementedFeatures',
        subBuilder: DataType_FeatureIdentifier.create)
    ..hasRequiredFields = false;

  Get_ImplementedFeatures_Responses._() : super();
  factory Get_ImplementedFeatures_Responses() => create();
  factory Get_ImplementedFeatures_Responses.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Get_ImplementedFeatures_Responses.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Get_ImplementedFeatures_Responses clone() =>
      Get_ImplementedFeatures_Responses()..mergeFromMessage(this);
  Get_ImplementedFeatures_Responses copyWith(
          void Function(Get_ImplementedFeatures_Responses) updates) =>
      super.copyWith(
          (message) => updates(message as Get_ImplementedFeatures_Responses));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ImplementedFeatures_Responses create() =>
      Get_ImplementedFeatures_Responses._();
  Get_ImplementedFeatures_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ImplementedFeatures_Responses> createRepeated() =>
      $pb.PbList<Get_ImplementedFeatures_Responses>();
  static Get_ImplementedFeatures_Responses getDefault() =>
      _defaultInstance ??= create()..freeze();
  static Get_ImplementedFeatures_Responses _defaultInstance;

  $core.List<DataType_FeatureIdentifier> get implementedFeatures =>
      $_getList(0);
}
