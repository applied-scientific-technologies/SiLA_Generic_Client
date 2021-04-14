///
//  Generated code. Do not modify.
//  source: SiLAServiceV2.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'SiLAFramework.pb.dart' as $1;

class GetFeatureDefinition_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFeatureDefinition_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..aOM<$1.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FeatureIdentifier', protoName: 'FeatureIdentifier', subBuilder: $1.String.create)
    ..hasRequiredFields = false
  ;

  GetFeatureDefinition_Parameters._() : super();
  factory GetFeatureDefinition_Parameters({
    $1.String featureIdentifier,
  }) {
    final _result = create();
    if (featureIdentifier != null) {
      _result.featureIdentifier = featureIdentifier;
    }
    return _result;
  }
  factory GetFeatureDefinition_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFeatureDefinition_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFeatureDefinition_Parameters clone() => GetFeatureDefinition_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFeatureDefinition_Parameters copyWith(void Function(GetFeatureDefinition_Parameters) updates) => super.copyWith((message) => updates(message as GetFeatureDefinition_Parameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFeatureDefinition_Parameters create() => GetFeatureDefinition_Parameters._();
  GetFeatureDefinition_Parameters createEmptyInstance() => create();
  static $pb.PbList<GetFeatureDefinition_Parameters> createRepeated() => $pb.PbList<GetFeatureDefinition_Parameters>();
  @$core.pragma('dart2js:noInline')
  static GetFeatureDefinition_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeatureDefinition_Parameters>(create);
  static GetFeatureDefinition_Parameters _defaultInstance;

  @$pb.TagNumber(1)
  $1.String get featureIdentifier => $_getN(0);
  @$pb.TagNumber(1)
  set featureIdentifier($1.String v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeatureIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeatureIdentifier() => clearField(1);
  @$pb.TagNumber(1)
  $1.String ensureFeatureIdentifier() => $_ensure(0);
}

class GetFeatureDefinition_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFeatureDefinition_Responses', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..aOM<$1.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'FeatureDefinition', protoName: 'FeatureDefinition', subBuilder: $1.String.create)
    ..hasRequiredFields = false
  ;

  GetFeatureDefinition_Responses._() : super();
  factory GetFeatureDefinition_Responses({
    $1.String featureDefinition,
  }) {
    final _result = create();
    if (featureDefinition != null) {
      _result.featureDefinition = featureDefinition;
    }
    return _result;
  }
  factory GetFeatureDefinition_Responses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFeatureDefinition_Responses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFeatureDefinition_Responses clone() => GetFeatureDefinition_Responses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFeatureDefinition_Responses copyWith(void Function(GetFeatureDefinition_Responses) updates) => super.copyWith((message) => updates(message as GetFeatureDefinition_Responses)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFeatureDefinition_Responses create() => GetFeatureDefinition_Responses._();
  GetFeatureDefinition_Responses createEmptyInstance() => create();
  static $pb.PbList<GetFeatureDefinition_Responses> createRepeated() => $pb.PbList<GetFeatureDefinition_Responses>();
  @$core.pragma('dart2js:noInline')
  static GetFeatureDefinition_Responses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeatureDefinition_Responses>(create);
  static GetFeatureDefinition_Responses _defaultInstance;

  @$pb.TagNumber(1)
  $1.String get featureDefinition => $_getN(0);
  @$pb.TagNumber(1)
  set featureDefinition($1.String v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeatureDefinition() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeatureDefinition() => clearField(1);
  @$pb.TagNumber(1)
  $1.String ensureFeatureDefinition() => $_ensure(0);
}

class SetServerName_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetServerName_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..aOM<$1.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ServerName', protoName: 'ServerName', subBuilder: $1.String.create)
    ..hasRequiredFields = false
  ;

  SetServerName_Parameters._() : super();
  factory SetServerName_Parameters({
    $1.String serverName,
  }) {
    final _result = create();
    if (serverName != null) {
      _result.serverName = serverName;
    }
    return _result;
  }
  factory SetServerName_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetServerName_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetServerName_Parameters clone() => SetServerName_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetServerName_Parameters copyWith(void Function(SetServerName_Parameters) updates) => super.copyWith((message) => updates(message as SetServerName_Parameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetServerName_Parameters create() => SetServerName_Parameters._();
  SetServerName_Parameters createEmptyInstance() => create();
  static $pb.PbList<SetServerName_Parameters> createRepeated() => $pb.PbList<SetServerName_Parameters>();
  @$core.pragma('dart2js:noInline')
  static SetServerName_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetServerName_Parameters>(create);
  static SetServerName_Parameters _defaultInstance;

  @$pb.TagNumber(1)
  $1.String get serverName => $_getN(0);
  @$pb.TagNumber(1)
  set serverName($1.String v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerName() => clearField(1);
  @$pb.TagNumber(1)
  $1.String ensureServerName() => $_ensure(0);
}

class SetServerName_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetServerName_Responses', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SetServerName_Responses._() : super();
  factory SetServerName_Responses() => create();
  factory SetServerName_Responses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetServerName_Responses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetServerName_Responses clone() => SetServerName_Responses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetServerName_Responses copyWith(void Function(SetServerName_Responses) updates) => super.copyWith((message) => updates(message as SetServerName_Responses)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetServerName_Responses create() => SetServerName_Responses._();
  SetServerName_Responses createEmptyInstance() => create();
  static $pb.PbList<SetServerName_Responses> createRepeated() => $pb.PbList<SetServerName_Responses>();
  @$core.pragma('dart2js:noInline')
  static SetServerName_Responses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetServerName_Responses>(create);
  static SetServerName_Responses _defaultInstance;
}

class Get_ServerName_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerName_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Get_ServerName_Parameters._() : super();
  factory Get_ServerName_Parameters() => create();
  factory Get_ServerName_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerName_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerName_Parameters clone() => Get_ServerName_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerName_Parameters copyWith(void Function(Get_ServerName_Parameters) updates) => super.copyWith((message) => updates(message as Get_ServerName_Parameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerName_Parameters create() => Get_ServerName_Parameters._();
  Get_ServerName_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerName_Parameters> createRepeated() => $pb.PbList<Get_ServerName_Parameters>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerName_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerName_Parameters>(create);
  static Get_ServerName_Parameters _defaultInstance;
}

class Get_ServerName_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerName_Responses', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..aOM<$1.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ServerName', protoName: 'ServerName', subBuilder: $1.String.create)
    ..hasRequiredFields = false
  ;

  Get_ServerName_Responses._() : super();
  factory Get_ServerName_Responses({
    $1.String serverName,
  }) {
    final _result = create();
    if (serverName != null) {
      _result.serverName = serverName;
    }
    return _result;
  }
  factory Get_ServerName_Responses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerName_Responses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerName_Responses clone() => Get_ServerName_Responses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerName_Responses copyWith(void Function(Get_ServerName_Responses) updates) => super.copyWith((message) => updates(message as Get_ServerName_Responses)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerName_Responses create() => Get_ServerName_Responses._();
  Get_ServerName_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerName_Responses> createRepeated() => $pb.PbList<Get_ServerName_Responses>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerName_Responses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerName_Responses>(create);
  static Get_ServerName_Responses _defaultInstance;

  @$pb.TagNumber(1)
  $1.String get serverName => $_getN(0);
  @$pb.TagNumber(1)
  set serverName($1.String v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerName() => clearField(1);
  @$pb.TagNumber(1)
  $1.String ensureServerName() => $_ensure(0);
}

class Get_ServerType_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerType_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Get_ServerType_Parameters._() : super();
  factory Get_ServerType_Parameters() => create();
  factory Get_ServerType_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerType_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerType_Parameters clone() => Get_ServerType_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerType_Parameters copyWith(void Function(Get_ServerType_Parameters) updates) => super.copyWith((message) => updates(message as Get_ServerType_Parameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerType_Parameters create() => Get_ServerType_Parameters._();
  Get_ServerType_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerType_Parameters> createRepeated() => $pb.PbList<Get_ServerType_Parameters>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerType_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerType_Parameters>(create);
  static Get_ServerType_Parameters _defaultInstance;
}

class Get_ServerType_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerType_Responses', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..aOM<$1.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ServerType', protoName: 'ServerType', subBuilder: $1.String.create)
    ..hasRequiredFields = false
  ;

  Get_ServerType_Responses._() : super();
  factory Get_ServerType_Responses({
    $1.String serverType,
  }) {
    final _result = create();
    if (serverType != null) {
      _result.serverType = serverType;
    }
    return _result;
  }
  factory Get_ServerType_Responses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerType_Responses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerType_Responses clone() => Get_ServerType_Responses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerType_Responses copyWith(void Function(Get_ServerType_Responses) updates) => super.copyWith((message) => updates(message as Get_ServerType_Responses)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerType_Responses create() => Get_ServerType_Responses._();
  Get_ServerType_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerType_Responses> createRepeated() => $pb.PbList<Get_ServerType_Responses>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerType_Responses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerType_Responses>(create);
  static Get_ServerType_Responses _defaultInstance;

  @$pb.TagNumber(1)
  $1.String get serverType => $_getN(0);
  @$pb.TagNumber(1)
  set serverType($1.String v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerType() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerType() => clearField(1);
  @$pb.TagNumber(1)
  $1.String ensureServerType() => $_ensure(0);
}

class Get_ServerUUID_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerUUID_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Get_ServerUUID_Parameters._() : super();
  factory Get_ServerUUID_Parameters() => create();
  factory Get_ServerUUID_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerUUID_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerUUID_Parameters clone() => Get_ServerUUID_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerUUID_Parameters copyWith(void Function(Get_ServerUUID_Parameters) updates) => super.copyWith((message) => updates(message as Get_ServerUUID_Parameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerUUID_Parameters create() => Get_ServerUUID_Parameters._();
  Get_ServerUUID_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerUUID_Parameters> createRepeated() => $pb.PbList<Get_ServerUUID_Parameters>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerUUID_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerUUID_Parameters>(create);
  static Get_ServerUUID_Parameters _defaultInstance;
}

class Get_ServerUUID_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerUUID_Responses', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..aOM<$1.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ServerUUID', protoName: 'ServerUUID', subBuilder: $1.String.create)
    ..hasRequiredFields = false
  ;

  Get_ServerUUID_Responses._() : super();
  factory Get_ServerUUID_Responses({
    $1.String serverUUID,
  }) {
    final _result = create();
    if (serverUUID != null) {
      _result.serverUUID = serverUUID;
    }
    return _result;
  }
  factory Get_ServerUUID_Responses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerUUID_Responses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerUUID_Responses clone() => Get_ServerUUID_Responses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerUUID_Responses copyWith(void Function(Get_ServerUUID_Responses) updates) => super.copyWith((message) => updates(message as Get_ServerUUID_Responses)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerUUID_Responses create() => Get_ServerUUID_Responses._();
  Get_ServerUUID_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerUUID_Responses> createRepeated() => $pb.PbList<Get_ServerUUID_Responses>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerUUID_Responses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerUUID_Responses>(create);
  static Get_ServerUUID_Responses _defaultInstance;

  @$pb.TagNumber(1)
  $1.String get serverUUID => $_getN(0);
  @$pb.TagNumber(1)
  set serverUUID($1.String v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerUUID() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerUUID() => clearField(1);
  @$pb.TagNumber(1)
  $1.String ensureServerUUID() => $_ensure(0);
}

class Get_ServerDescription_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerDescription_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Get_ServerDescription_Parameters._() : super();
  factory Get_ServerDescription_Parameters() => create();
  factory Get_ServerDescription_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerDescription_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerDescription_Parameters clone() => Get_ServerDescription_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerDescription_Parameters copyWith(void Function(Get_ServerDescription_Parameters) updates) => super.copyWith((message) => updates(message as Get_ServerDescription_Parameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerDescription_Parameters create() => Get_ServerDescription_Parameters._();
  Get_ServerDescription_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerDescription_Parameters> createRepeated() => $pb.PbList<Get_ServerDescription_Parameters>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerDescription_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerDescription_Parameters>(create);
  static Get_ServerDescription_Parameters _defaultInstance;
}

class Get_ServerDescription_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerDescription_Responses', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..aOM<$1.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ServerDescription', protoName: 'ServerDescription', subBuilder: $1.String.create)
    ..hasRequiredFields = false
  ;

  Get_ServerDescription_Responses._() : super();
  factory Get_ServerDescription_Responses({
    $1.String serverDescription,
  }) {
    final _result = create();
    if (serverDescription != null) {
      _result.serverDescription = serverDescription;
    }
    return _result;
  }
  factory Get_ServerDescription_Responses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerDescription_Responses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerDescription_Responses clone() => Get_ServerDescription_Responses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerDescription_Responses copyWith(void Function(Get_ServerDescription_Responses) updates) => super.copyWith((message) => updates(message as Get_ServerDescription_Responses)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerDescription_Responses create() => Get_ServerDescription_Responses._();
  Get_ServerDescription_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerDescription_Responses> createRepeated() => $pb.PbList<Get_ServerDescription_Responses>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerDescription_Responses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerDescription_Responses>(create);
  static Get_ServerDescription_Responses _defaultInstance;

  @$pb.TagNumber(1)
  $1.String get serverDescription => $_getN(0);
  @$pb.TagNumber(1)
  set serverDescription($1.String v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerDescription() => clearField(1);
  @$pb.TagNumber(1)
  $1.String ensureServerDescription() => $_ensure(0);
}

class Get_ServerVersion_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerVersion_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Get_ServerVersion_Parameters._() : super();
  factory Get_ServerVersion_Parameters() => create();
  factory Get_ServerVersion_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerVersion_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerVersion_Parameters clone() => Get_ServerVersion_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerVersion_Parameters copyWith(void Function(Get_ServerVersion_Parameters) updates) => super.copyWith((message) => updates(message as Get_ServerVersion_Parameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerVersion_Parameters create() => Get_ServerVersion_Parameters._();
  Get_ServerVersion_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerVersion_Parameters> createRepeated() => $pb.PbList<Get_ServerVersion_Parameters>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerVersion_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerVersion_Parameters>(create);
  static Get_ServerVersion_Parameters _defaultInstance;
}

class Get_ServerVersion_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerVersion_Responses', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..aOM<$1.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ServerVersion', protoName: 'ServerVersion', subBuilder: $1.String.create)
    ..hasRequiredFields = false
  ;

  Get_ServerVersion_Responses._() : super();
  factory Get_ServerVersion_Responses({
    $1.String serverVersion,
  }) {
    final _result = create();
    if (serverVersion != null) {
      _result.serverVersion = serverVersion;
    }
    return _result;
  }
  factory Get_ServerVersion_Responses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerVersion_Responses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerVersion_Responses clone() => Get_ServerVersion_Responses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerVersion_Responses copyWith(void Function(Get_ServerVersion_Responses) updates) => super.copyWith((message) => updates(message as Get_ServerVersion_Responses)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerVersion_Responses create() => Get_ServerVersion_Responses._();
  Get_ServerVersion_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerVersion_Responses> createRepeated() => $pb.PbList<Get_ServerVersion_Responses>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerVersion_Responses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerVersion_Responses>(create);
  static Get_ServerVersion_Responses _defaultInstance;

  @$pb.TagNumber(1)
  $1.String get serverVersion => $_getN(0);
  @$pb.TagNumber(1)
  set serverVersion($1.String v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerVersion() => clearField(1);
  @$pb.TagNumber(1)
  $1.String ensureServerVersion() => $_ensure(0);
}

class Get_ServerVendorURL_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerVendorURL_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Get_ServerVendorURL_Parameters._() : super();
  factory Get_ServerVendorURL_Parameters() => create();
  factory Get_ServerVendorURL_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerVendorURL_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerVendorURL_Parameters clone() => Get_ServerVendorURL_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerVendorURL_Parameters copyWith(void Function(Get_ServerVendorURL_Parameters) updates) => super.copyWith((message) => updates(message as Get_ServerVendorURL_Parameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerVendorURL_Parameters create() => Get_ServerVendorURL_Parameters._();
  Get_ServerVendorURL_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ServerVendorURL_Parameters> createRepeated() => $pb.PbList<Get_ServerVendorURL_Parameters>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerVendorURL_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerVendorURL_Parameters>(create);
  static Get_ServerVendorURL_Parameters _defaultInstance;
}

class Get_ServerVendorURL_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ServerVendorURL_Responses', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..aOM<$1.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ServerVendorURL', protoName: 'ServerVendorURL', subBuilder: $1.String.create)
    ..hasRequiredFields = false
  ;

  Get_ServerVendorURL_Responses._() : super();
  factory Get_ServerVendorURL_Responses({
    $1.String serverVendorURL,
  }) {
    final _result = create();
    if (serverVendorURL != null) {
      _result.serverVendorURL = serverVendorURL;
    }
    return _result;
  }
  factory Get_ServerVendorURL_Responses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ServerVendorURL_Responses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ServerVendorURL_Responses clone() => Get_ServerVendorURL_Responses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ServerVendorURL_Responses copyWith(void Function(Get_ServerVendorURL_Responses) updates) => super.copyWith((message) => updates(message as Get_ServerVendorURL_Responses)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ServerVendorURL_Responses create() => Get_ServerVendorURL_Responses._();
  Get_ServerVendorURL_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ServerVendorURL_Responses> createRepeated() => $pb.PbList<Get_ServerVendorURL_Responses>();
  @$core.pragma('dart2js:noInline')
  static Get_ServerVendorURL_Responses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ServerVendorURL_Responses>(create);
  static Get_ServerVendorURL_Responses _defaultInstance;

  @$pb.TagNumber(1)
  $1.String get serverVendorURL => $_getN(0);
  @$pb.TagNumber(1)
  set serverVendorURL($1.String v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerVendorURL() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerVendorURL() => clearField(1);
  @$pb.TagNumber(1)
  $1.String ensureServerVendorURL() => $_ensure(0);
}

class Get_ImplementedFeatures_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ImplementedFeatures_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Get_ImplementedFeatures_Parameters._() : super();
  factory Get_ImplementedFeatures_Parameters() => create();
  factory Get_ImplementedFeatures_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ImplementedFeatures_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ImplementedFeatures_Parameters clone() => Get_ImplementedFeatures_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ImplementedFeatures_Parameters copyWith(void Function(Get_ImplementedFeatures_Parameters) updates) => super.copyWith((message) => updates(message as Get_ImplementedFeatures_Parameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ImplementedFeatures_Parameters create() => Get_ImplementedFeatures_Parameters._();
  Get_ImplementedFeatures_Parameters createEmptyInstance() => create();
  static $pb.PbList<Get_ImplementedFeatures_Parameters> createRepeated() => $pb.PbList<Get_ImplementedFeatures_Parameters>();
  @$core.pragma('dart2js:noInline')
  static Get_ImplementedFeatures_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ImplementedFeatures_Parameters>(create);
  static Get_ImplementedFeatures_Parameters _defaultInstance;
}

class Get_ImplementedFeatures_Responses extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get_ImplementedFeatures_Responses', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sila2.org.silastandard.core.silaservice.v1'), createEmptyInstance: create)
    ..pc<$1.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ImplementedFeatures', $pb.PbFieldType.PM, protoName: 'ImplementedFeatures', subBuilder: $1.String.create)
    ..hasRequiredFields = false
  ;

  Get_ImplementedFeatures_Responses._() : super();
  factory Get_ImplementedFeatures_Responses({
    $core.Iterable<$1.String> implementedFeatures,
  }) {
    final _result = create();
    if (implementedFeatures != null) {
      _result.implementedFeatures.addAll(implementedFeatures);
    }
    return _result;
  }
  factory Get_ImplementedFeatures_Responses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_ImplementedFeatures_Responses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_ImplementedFeatures_Responses clone() => Get_ImplementedFeatures_Responses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_ImplementedFeatures_Responses copyWith(void Function(Get_ImplementedFeatures_Responses) updates) => super.copyWith((message) => updates(message as Get_ImplementedFeatures_Responses)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_ImplementedFeatures_Responses create() => Get_ImplementedFeatures_Responses._();
  Get_ImplementedFeatures_Responses createEmptyInstance() => create();
  static $pb.PbList<Get_ImplementedFeatures_Responses> createRepeated() => $pb.PbList<Get_ImplementedFeatures_Responses>();
  @$core.pragma('dart2js:noInline')
  static Get_ImplementedFeatures_Responses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_ImplementedFeatures_Responses>(create);
  static Get_ImplementedFeatures_Responses _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.String> get implementedFeatures => $_getList(0);
}

