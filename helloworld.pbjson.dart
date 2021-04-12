///
//  Generated code. Do not modify.
//  source: helloworld.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use helloRequestDescriptor instead')
const HelloRequest$json = const {
  '1': 'HelloRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `HelloRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloRequestDescriptor = $convert.base64Decode('CgxIZWxsb1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use helloReplyDescriptor instead')
const HelloReply$json = const {
  '1': 'HelloReply',
  '2': const [
    const {'1': 'hello_message', '3': 1, '4': 1, '5': 9, '10': 'helloMessage'},
    const {'1': 'goodbye_message', '3': 2, '4': 1, '5': 9, '10': 'goodbyeMessage'},
  ],
};

/// Descriptor for `HelloReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloReplyDescriptor = $convert.base64Decode('CgpIZWxsb1JlcGx5EiMKDWhlbGxvX21lc3NhZ2UYASABKAlSDGhlbGxvTWVzc2FnZRInCg9nb29kYnllX21lc3NhZ2UYAiABKAlSDmdvb2RieWVNZXNzYWdl');
@$core.Deprecated('Use add500RequestDescriptor instead')
const add500Request$json = const {
  '1': 'add500Request',
  '2': const [
    const {'1': 'initial_value', '3': 1, '4': 1, '5': 5, '10': 'initialValue'},
  ],
};

/// Descriptor for `add500Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List add500RequestDescriptor = $convert.base64Decode('Cg1hZGQ1MDBSZXF1ZXN0EiMKDWluaXRpYWxfdmFsdWUYASABKAVSDGluaXRpYWxWYWx1ZQ==');
@$core.Deprecated('Use add500ReplyDescriptor instead')
const add500Reply$json = const {
  '1': 'add500Reply',
  '2': const [
    const {'1': 'result_value', '3': 1, '4': 1, '5': 5, '10': 'resultValue'},
  ],
};

/// Descriptor for `add500Reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List add500ReplyDescriptor = $convert.base64Decode('CgthZGQ1MDBSZXBseRIhCgxyZXN1bHRfdmFsdWUYASABKAVSC3Jlc3VsdFZhbHVl');
