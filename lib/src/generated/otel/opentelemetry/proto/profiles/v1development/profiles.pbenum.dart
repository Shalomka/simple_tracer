//
//  Generated code. Do not modify.
//  source: opentelemetry/proto/profiles/v1development/profiles.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Specifies the method of aggregating metric values, either DELTA (change since last report)
/// or CUMULATIVE (total since a fixed start time).
class AggregationTemporality extends $pb.ProtobufEnum {
  /// UNSPECIFIED is the default AggregationTemporality, it MUST not be used.
  static const AggregationTemporality AGGREGATION_TEMPORALITY_UNSPECIFIED = AggregationTemporality._(0, _omitEnumNames ? '' : 'AGGREGATION_TEMPORALITY_UNSPECIFIED');
  /// * DELTA is an AggregationTemporality for a profiler which reports
  /// changes since last report time. Successive metrics contain aggregation of
  /// values from continuous and non-overlapping intervals.
  ///
  /// The values for a DELTA metric are based only on the time interval
  /// associated with one measurement cycle. There is no dependency on
  /// previous measurements like is the case for CUMULATIVE metrics.
  ///
  /// For example, consider a system measuring the number of requests that
  /// it receives and reports the sum of these requests every second as a
  /// DELTA metric:
  ///
  /// 1. The system starts receiving at time=t_0.
  /// 2. A request is received, the system measures 1 request.
  /// 3. A request is received, the system measures 1 request.
  /// 4. A request is received, the system measures 1 request.
  /// 5. The 1 second collection cycle ends. A metric is exported for the
  /// number of requests received over the interval of time t_0 to
  /// t_0+1 with a value of 3.
  /// 6. A request is received, the system measures 1 request.
  /// 7. A request is received, the system measures 1 request.
  /// 8. The 1 second collection cycle ends. A metric is exported for the
  /// number of requests received over the interval of time t_0+1 to
  /// t_0+2 with a value of 2.
  static const AggregationTemporality AGGREGATION_TEMPORALITY_DELTA = AggregationTemporality._(1, _omitEnumNames ? '' : 'AGGREGATION_TEMPORALITY_DELTA');
  /// * CUMULATIVE is an AggregationTemporality for a profiler which
  /// reports changes since a fixed start time. This means that current values
  /// of a CUMULATIVE metric depend on all previous measurements since the
  /// start time. Because of this, the sender is required to retain this state
  /// in some form. If this state is lost or invalidated, the CUMULATIVE metric
  /// values MUST be reset and a new fixed start time following the last
  /// reported measurement time sent MUST be used.
  ///
  /// For example, consider a system measuring the number of requests that
  /// it receives and reports the sum of these requests every second as a
  /// CUMULATIVE metric:
  ///
  /// 1. The system starts receiving at time=t_0.
  /// 2. A request is received, the system measures 1 request.
  /// 3. A request is received, the system measures 1 request.
  /// 4. A request is received, the system measures 1 request.
  /// 5. The 1 second collection cycle ends. A metric is exported for the
  /// number of requests received over the interval of time t_0 to
  /// t_0+1 with a value of 3.
  /// 6. A request is received, the system measures 1 request.
  /// 7. A request is received, the system measures 1 request.
  /// 8. The 1 second collection cycle ends. A metric is exported for the
  /// number of requests received over the interval of time t_0 to
  /// t_0+2 with a value of 5.
  /// 9. The system experiences a fault and loses state.
  /// 10. The system recovers and resumes receiving at time=t_1.
  /// 11. A request is received, the system measures 1 request.
  /// 12. The 1 second collection cycle ends. A metric is exported for the
  /// number of requests received over the interval of time t_1 to
  /// t_1+1 with a value of 1.
  ///
  /// Note: Even though, when reporting changes since last report time, using
  /// CUMULATIVE is valid, it is not recommended.
  static const AggregationTemporality AGGREGATION_TEMPORALITY_CUMULATIVE = AggregationTemporality._(2, _omitEnumNames ? '' : 'AGGREGATION_TEMPORALITY_CUMULATIVE');

  static const $core.List<AggregationTemporality> values = <AggregationTemporality> [
    AGGREGATION_TEMPORALITY_UNSPECIFIED,
    AGGREGATION_TEMPORALITY_DELTA,
    AGGREGATION_TEMPORALITY_CUMULATIVE,
  ];

  static final $core.Map<$core.int, AggregationTemporality> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AggregationTemporality? valueOf($core.int value) => _byValue[value];

  const AggregationTemporality._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
