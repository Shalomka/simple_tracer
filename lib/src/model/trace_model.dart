import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:simple_tracer/src/generated/otel/opentelemetry/proto/common/v1/common.pb.dart';
import 'package:simple_tracer/src/generated/otel/opentelemetry/proto/resource/v1/resource.pb.dart';
import 'package:simple_tracer/src/model/span_kind_enum.dart';
import 'package:uuid/uuid.dart';

import '../generated/otel/opentelemetry/proto/trace/v1/trace.pb.dart';

const _uuid = Uuid();

/// Trace model that represents a trace in the OpenTelemetry format.
/// It contains the trace ID, span ID, span kind and other metadata.
class Trace {
  /// Creates a new trace with optional [traceId], [spanId] and [spanKind].
  /// [serviceName] and [spanName] are the only required parameters.
  /// Ids are generated using [Uuid.v4] if not provided and [spanKind] is set to
  /// [SpanKind.client] by default.
  /// [attributes] is an optional parameter that can be used to add
  /// additional metadata to the trace.
  Trace({
    required this.serviceName,
    required this.spanName,
    this.attributes,
    SpanKind spanKind = SpanKind.client,
    String? traceId,
    String? spanId,
  })  : _traceId = traceId ?? _uuid.v4(),
        _spanId = spanId ?? _uuid.v4(),
        _spanKind = spanKind.toProto() {
    _init();
  }

  /// Inititialize trace
  void _init() {
    _initTracesData();
  }

  ///
  /// Getters
  ///

  /// OpenTelemetry trace data in [TracesData] format.
  TracesData get data => _tracesData;

  /// Opentelemetry data encoded in [Uint8List] format.
  Uint8List get encodedData => _tracesData.writeToBuffer();

  ///
  /// Private variables
  ///

  /// The trace data in OpenTelemetry format.
  late final TracesData _tracesData;

  /// The trace ID of the trace.
  /// This is a unique identifier for the trace.
  final String _traceId;

  /// The span ID of the trace.
  /// This is a unique identifier for the span.
  final String _spanId;

  /// The span kind of the trace.
  final Span_SpanKind _spanKind;

  /// The name of the service that generated the trace.
  /// This is a required parameter.
  final String serviceName;

  /// The name of the span.
  /// This is a required parameter.
  final String spanName;

  /// The start time of the trace.
  final DateTime _startTime = DateTime.now();

  /// The attributes of the trace.
  /// This is an optional parameter.
  final Map<String, dynamic>? attributes;

  ///
  /// Functions
  ///

  /// toSting method to convert trace data to string.
  @override
  String toString() => data.toString();

  /// initialize [_tracesData]
  void _initTracesData() {
    _tracesData = TracesData(resourceSpans: [
      ResourceSpans(
        resource: Resource(
          attributes: [
            KeyValue(
              key: 'service.name',
              value: AnyValue(
                stringValue: serviceName,
              ),
            ),
          ],
        ),
        scopeSpans: [
          ScopeSpans(
            scope: InstrumentationScope(
              name: serviceName,
              version: '1.0.0',
            ),
            spans: [
              Span(
                traceId: _traceId.toListInt(),
                spanId: _spanId.toListInt(),
                kind: _spanKind,
                name: spanName,
                startTimeUnixNano: _startTime.toInt64(),
                attributes:
                    attributes?.entries.map((e) => e.toKeyValue()).toList(),
              ),
            ],
          ),
        ],
      ),
    ]);
  }

  /// Ends the trace.
  void end() {
    _tracesData.resourceSpans[0].scopeSpans[0].spans[0].endTimeUnixNano =
        DateTime.now().toInt64();
  }

  /// Adds an attribute to the trace.
  void addAttribute(String key, dynamic value) {
    final entry = MapEntry<String, dynamic>(key, value);
    _tracesData.resourceSpans[0].scopeSpans[0].spans[0].attributes.add(
      entry.toKeyValue(),
    );
  }

  /// Records error in the trace.
  /// This method is used to record an error in the trace.
  /// It takes a [message] and [attributes] as parameters.
  /// The [message] is the error message and [attributes] are the
  /// attributes of the error.
  void recordError(String message, {Map<String, String>? attributes}) {
    _tracesData.resourceSpans[0].scopeSpans[0].spans[0].status = Status(
      code: Status_StatusCode.STATUS_CODE_ERROR,
      message: message,
    );
    if (attributes != null) {
      _tracesData.resourceSpans[0].scopeSpans[0].spans[0].attributes.addAll(
        attributes.entries
            .map((e) => KeyValue(
                  key: e.key,
                  value: AnyValue(stringValue: e.value),
                ))
            .toList(),
      );
    }
  }

  /// Returns HTTP TraceParent Header for Http requests.
  String get httpTraceParent {
    return '00-$_traceId-$_spanId-01';
  }
}

///
/// Extensions
///

/// Converts [DateTime] to [Int64]
extension DateTimeToInt64 on DateTime {
  /// Converts [DateTime] to [Int64].
  Int64 toInt64() {
    return Int64(millisecondsSinceEpoch);
  }
}

/// Converts [String] to [List<int>]
extension StringToListInt on String {
  /// Converts [String] to [List<int>].
  List<int> toListInt() {
    return codeUnits;
  }
}

/// Converts [MapEntry] to [KeyValue] based on
/// type of the provided value.
/// It will fall back to String if the type is not supported.
extension MapEntryX on MapEntry<String, dynamic> {
  /// Converts [MapEntry] to [KeyValue].
  KeyValue toKeyValue() {
    final type = value.runtimeType;
    if (type == String) {
      return KeyValue(
        key: key,
        value: AnyValue(stringValue: value as String),
      );
    } else if (type == int) {
      return KeyValue(
        key: key,
        value: AnyValue(intValue: Int64(value as int)),
      );
    } else if (type == double) {
      return KeyValue(
        key: key,
        value: AnyValue(doubleValue: value as double),
      );
    } else if (type == bool) {
      return KeyValue(
        key: key,
        value: AnyValue(boolValue: value as bool),
      );
    } else {
      return KeyValue(
        key: key,
        value: AnyValue(stringValue: value.toString()),
      );
    }
  }
}
