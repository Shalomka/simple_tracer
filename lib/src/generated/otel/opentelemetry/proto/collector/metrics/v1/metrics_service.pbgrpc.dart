//
//  Generated code. Do not modify.
//  source: opentelemetry/proto/collector/metrics/v1/metrics_service.proto
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

import 'metrics_service.pb.dart' as $0;

export 'metrics_service.pb.dart';

@$pb.GrpcServiceName('opentelemetry.proto.collector.metrics.v1.MetricsService')
class MetricsServiceClient extends $grpc.Client {
  static final _$export = $grpc.ClientMethod<$0.ExportMetricsServiceRequest, $0.ExportMetricsServiceResponse>(
      '/opentelemetry.proto.collector.metrics.v1.MetricsService/Export',
      ($0.ExportMetricsServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ExportMetricsServiceResponse.fromBuffer(value));

  MetricsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ExportMetricsServiceResponse> export($0.ExportMetricsServiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$export, request, options: options);
  }
}

@$pb.GrpcServiceName('opentelemetry.proto.collector.metrics.v1.MetricsService')
abstract class MetricsServiceBase extends $grpc.Service {
  $core.String get $name => 'opentelemetry.proto.collector.metrics.v1.MetricsService';

  MetricsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ExportMetricsServiceRequest, $0.ExportMetricsServiceResponse>(
        'Export',
        export_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ExportMetricsServiceRequest.fromBuffer(value),
        ($0.ExportMetricsServiceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ExportMetricsServiceResponse> export_Pre($grpc.ServiceCall $call, $async.Future<$0.ExportMetricsServiceRequest> $request) async {
    return export($call, await $request);
  }

  $async.Future<$0.ExportMetricsServiceResponse> export($grpc.ServiceCall call, $0.ExportMetricsServiceRequest request);
}
