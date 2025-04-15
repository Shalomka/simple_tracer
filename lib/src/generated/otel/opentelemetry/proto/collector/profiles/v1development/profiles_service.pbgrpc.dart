//
//  Generated code. Do not modify.
//  source: opentelemetry/proto/collector/profiles/v1development/profiles_service.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'profiles_service.pb.dart' as $3;

export 'profiles_service.pb.dart';

@$pb.GrpcServiceName('opentelemetry.proto.collector.profiles.v1development.ProfilesService')
class ProfilesServiceClient extends $grpc.Client {
  static final _$export = $grpc.ClientMethod<$3.ExportProfilesServiceRequest, $3.ExportProfilesServiceResponse>(
      '/opentelemetry.proto.collector.profiles.v1development.ProfilesService/Export',
      ($3.ExportProfilesServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ExportProfilesServiceResponse.fromBuffer(value));

  ProfilesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.ExportProfilesServiceResponse> export($3.ExportProfilesServiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$export, request, options: options);
  }
}

@$pb.GrpcServiceName('opentelemetry.proto.collector.profiles.v1development.ProfilesService')
abstract class ProfilesServiceBase extends $grpc.Service {
  $core.String get $name => 'opentelemetry.proto.collector.profiles.v1development.ProfilesService';

  ProfilesServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ExportProfilesServiceRequest, $3.ExportProfilesServiceResponse>(
        'Export',
        export_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ExportProfilesServiceRequest.fromBuffer(value),
        ($3.ExportProfilesServiceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.ExportProfilesServiceResponse> export_Pre($grpc.ServiceCall $call, $async.Future<$3.ExportProfilesServiceRequest> $request) async {
    return export($call, await $request);
  }

  $async.Future<$3.ExportProfilesServiceResponse> export($grpc.ServiceCall call, $3.ExportProfilesServiceRequest request);
}
