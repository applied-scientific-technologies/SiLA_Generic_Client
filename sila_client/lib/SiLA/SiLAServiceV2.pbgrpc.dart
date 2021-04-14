///
//  Generated code. Do not modify.
//  source: SiLAServiceV2.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'SiLAServiceV2.pb.dart' as $0;
export 'SiLAServiceV2.pb.dart';

class SiLAServiceClient extends $grpc.Client {
  static final _$getFeatureDefinition = $grpc.ClientMethod<
          $0.GetFeatureDefinition_Parameters,
          $0.GetFeatureDefinition_Responses>(
      '/sila2.org.silastandard.core.silaservice.v1.SiLAService/GetFeatureDefinition',
      ($0.GetFeatureDefinition_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetFeatureDefinition_Responses.fromBuffer(value));
  static final _$setServerName = $grpc.ClientMethod<$0.SetServerName_Parameters,
          $0.SetServerName_Responses>(
      '/sila2.org.silastandard.core.silaservice.v1.SiLAService/SetServerName',
      ($0.SetServerName_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SetServerName_Responses.fromBuffer(value));
  static final _$get_ServerName = $grpc.ClientMethod<
          $0.Get_ServerName_Parameters, $0.Get_ServerName_Responses>(
      '/sila2.org.silastandard.core.silaservice.v1.SiLAService/Get_ServerName',
      ($0.Get_ServerName_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.Get_ServerName_Responses.fromBuffer(value));
  static final _$get_ServerType = $grpc.ClientMethod<
          $0.Get_ServerType_Parameters, $0.Get_ServerType_Responses>(
      '/sila2.org.silastandard.core.silaservice.v1.SiLAService/Get_ServerType',
      ($0.Get_ServerType_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.Get_ServerType_Responses.fromBuffer(value));
  static final _$get_ServerUUID = $grpc.ClientMethod<
          $0.Get_ServerUUID_Parameters, $0.Get_ServerUUID_Responses>(
      '/sila2.org.silastandard.core.silaservice.v1.SiLAService/Get_ServerUUID',
      ($0.Get_ServerUUID_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.Get_ServerUUID_Responses.fromBuffer(value));
  static final _$get_ServerDescription = $grpc.ClientMethod<
          $0.Get_ServerDescription_Parameters,
          $0.Get_ServerDescription_Responses>(
      '/sila2.org.silastandard.core.silaservice.v1.SiLAService/Get_ServerDescription',
      ($0.Get_ServerDescription_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.Get_ServerDescription_Responses.fromBuffer(value));
  static final _$get_ServerVersion = $grpc.ClientMethod<
          $0.Get_ServerVersion_Parameters, $0.Get_ServerVersion_Responses>(
      '/sila2.org.silastandard.core.silaservice.v1.SiLAService/Get_ServerVersion',
      ($0.Get_ServerVersion_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.Get_ServerVersion_Responses.fromBuffer(value));
  static final _$get_ServerVendorURL = $grpc.ClientMethod<
          $0.Get_ServerVendorURL_Parameters, $0.Get_ServerVendorURL_Responses>(
      '/sila2.org.silastandard.core.silaservice.v1.SiLAService/Get_ServerVendorURL',
      ($0.Get_ServerVendorURL_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.Get_ServerVendorURL_Responses.fromBuffer(value));
  static final _$get_ImplementedFeatures = $grpc.ClientMethod<
          $0.Get_ImplementedFeatures_Parameters,
          $0.Get_ImplementedFeatures_Responses>(
      '/sila2.org.silastandard.core.silaservice.v1.SiLAService/Get_ImplementedFeatures',
      ($0.Get_ImplementedFeatures_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.Get_ImplementedFeatures_Responses.fromBuffer(value));

  SiLAServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetFeatureDefinition_Responses> getFeatureDefinition(
      $0.GetFeatureDefinition_Parameters request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getFeatureDefinition, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetServerName_Responses> setServerName(
      $0.SetServerName_Parameters request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$setServerName, request, options: options);
  }

  $grpc.ResponseFuture<$0.Get_ServerName_Responses> get_ServerName(
      $0.Get_ServerName_Parameters request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$get_ServerName, request, options: options);
  }

  $grpc.ResponseFuture<$0.Get_ServerType_Responses> get_ServerType(
      $0.Get_ServerType_Parameters request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$get_ServerType, request, options: options);
  }

  $grpc.ResponseFuture<$0.Get_ServerUUID_Responses> get_ServerUUID(
      $0.Get_ServerUUID_Parameters request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$get_ServerUUID, request, options: options);
  }

  $grpc.ResponseFuture<$0.Get_ServerDescription_Responses>
      get_ServerDescription($0.Get_ServerDescription_Parameters request,
          {$grpc.CallOptions options}) {
    return $createUnaryCall(_$get_ServerDescription, request, options: options);
  }

  $grpc.ResponseFuture<$0.Get_ServerVersion_Responses> get_ServerVersion(
      $0.Get_ServerVersion_Parameters request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$get_ServerVersion, request, options: options);
  }

  $grpc.ResponseFuture<$0.Get_ServerVendorURL_Responses> get_ServerVendorURL(
      $0.Get_ServerVendorURL_Parameters request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$get_ServerVendorURL, request, options: options);
  }

  $grpc.ResponseFuture<$0.Get_ImplementedFeatures_Responses>
      get_ImplementedFeatures($0.Get_ImplementedFeatures_Parameters request,
          {$grpc.CallOptions options}) {
    return $createUnaryCall(_$get_ImplementedFeatures, request,
        options: options);
  }
}

abstract class SiLAServiceBase extends $grpc.Service {
  $core.String get $name =>
      'sila2.org.silastandard.core.silaservice.v1.SiLAService';

  SiLAServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetFeatureDefinition_Parameters,
            $0.GetFeatureDefinition_Responses>(
        'GetFeatureDefinition',
        getFeatureDefinition_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetFeatureDefinition_Parameters.fromBuffer(value),
        ($0.GetFeatureDefinition_Responses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetServerName_Parameters,
            $0.SetServerName_Responses>(
        'SetServerName',
        setServerName_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetServerName_Parameters.fromBuffer(value),
        ($0.SetServerName_Responses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Get_ServerName_Parameters,
            $0.Get_ServerName_Responses>(
        'Get_ServerName',
        get_ServerName_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.Get_ServerName_Parameters.fromBuffer(value),
        ($0.Get_ServerName_Responses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Get_ServerType_Parameters,
            $0.Get_ServerType_Responses>(
        'Get_ServerType',
        get_ServerType_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.Get_ServerType_Parameters.fromBuffer(value),
        ($0.Get_ServerType_Responses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Get_ServerUUID_Parameters,
            $0.Get_ServerUUID_Responses>(
        'Get_ServerUUID',
        get_ServerUUID_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.Get_ServerUUID_Parameters.fromBuffer(value),
        ($0.Get_ServerUUID_Responses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Get_ServerDescription_Parameters,
            $0.Get_ServerDescription_Responses>(
        'Get_ServerDescription',
        get_ServerDescription_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.Get_ServerDescription_Parameters.fromBuffer(value),
        ($0.Get_ServerDescription_Responses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Get_ServerVersion_Parameters,
            $0.Get_ServerVersion_Responses>(
        'Get_ServerVersion',
        get_ServerVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.Get_ServerVersion_Parameters.fromBuffer(value),
        ($0.Get_ServerVersion_Responses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Get_ServerVendorURL_Parameters,
            $0.Get_ServerVendorURL_Responses>(
        'Get_ServerVendorURL',
        get_ServerVendorURL_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.Get_ServerVendorURL_Parameters.fromBuffer(value),
        ($0.Get_ServerVendorURL_Responses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Get_ImplementedFeatures_Parameters,
            $0.Get_ImplementedFeatures_Responses>(
        'Get_ImplementedFeatures',
        get_ImplementedFeatures_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.Get_ImplementedFeatures_Parameters.fromBuffer(value),
        ($0.Get_ImplementedFeatures_Responses value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetFeatureDefinition_Responses> getFeatureDefinition_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetFeatureDefinition_Parameters> request) async {
    return getFeatureDefinition(call, await request);
  }

  $async.Future<$0.SetServerName_Responses> setServerName_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SetServerName_Parameters> request) async {
    return setServerName(call, await request);
  }

  $async.Future<$0.Get_ServerName_Responses> get_ServerName_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.Get_ServerName_Parameters> request) async {
    return get_ServerName(call, await request);
  }

  $async.Future<$0.Get_ServerType_Responses> get_ServerType_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.Get_ServerType_Parameters> request) async {
    return get_ServerType(call, await request);
  }

  $async.Future<$0.Get_ServerUUID_Responses> get_ServerUUID_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.Get_ServerUUID_Parameters> request) async {
    return get_ServerUUID(call, await request);
  }

  $async.Future<$0.Get_ServerDescription_Responses> get_ServerDescription_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.Get_ServerDescription_Parameters> request) async {
    return get_ServerDescription(call, await request);
  }

  $async.Future<$0.Get_ServerVersion_Responses> get_ServerVersion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.Get_ServerVersion_Parameters> request) async {
    return get_ServerVersion(call, await request);
  }

  $async.Future<$0.Get_ServerVendorURL_Responses> get_ServerVendorURL_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.Get_ServerVendorURL_Parameters> request) async {
    return get_ServerVendorURL(call, await request);
  }

  $async.Future<$0.Get_ImplementedFeatures_Responses>
      get_ImplementedFeatures_Pre($grpc.ServiceCall call,
          $async.Future<$0.Get_ImplementedFeatures_Parameters> request) async {
    return get_ImplementedFeatures(call, await request);
  }

  $async.Future<$0.GetFeatureDefinition_Responses> getFeatureDefinition(
      $grpc.ServiceCall call, $0.GetFeatureDefinition_Parameters request);
  $async.Future<$0.SetServerName_Responses> setServerName(
      $grpc.ServiceCall call, $0.SetServerName_Parameters request);
  $async.Future<$0.Get_ServerName_Responses> get_ServerName(
      $grpc.ServiceCall call, $0.Get_ServerName_Parameters request);
  $async.Future<$0.Get_ServerType_Responses> get_ServerType(
      $grpc.ServiceCall call, $0.Get_ServerType_Parameters request);
  $async.Future<$0.Get_ServerUUID_Responses> get_ServerUUID(
      $grpc.ServiceCall call, $0.Get_ServerUUID_Parameters request);
  $async.Future<$0.Get_ServerDescription_Responses> get_ServerDescription(
      $grpc.ServiceCall call, $0.Get_ServerDescription_Parameters request);
  $async.Future<$0.Get_ServerVersion_Responses> get_ServerVersion(
      $grpc.ServiceCall call, $0.Get_ServerVersion_Parameters request);
  $async.Future<$0.Get_ServerVendorURL_Responses> get_ServerVendorURL(
      $grpc.ServiceCall call, $0.Get_ServerVendorURL_Parameters request);
  $async.Future<$0.Get_ImplementedFeatures_Responses> get_ImplementedFeatures(
      $grpc.ServiceCall call, $0.Get_ImplementedFeatures_Parameters request);
}
