import 'package:dio/dio.dart';
import 'package:simple_tracer/src/model/span_kind_enum.dart';
import 'package:simple_tracer/src/model/trace_model.dart';

/// {@template simple_tracer}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class SimpleTracer {
  final Dio _dio;
  static SimpleTracer? _instance;
  final _traces = <Trace>[];

  ///
  /// Constructors
  ///

  /// Private constructor for [SimpleTracer].
  /// It initializes the [Dio] instance with the provided [BaseOptions].
  SimpleTracer._internal(this._dio, {BaseOptions? options}) {
    _dio.options = options ?? BaseOptions();
  }

  /// Configures and returns the singleton instance of [SimpleTracer]
  factory SimpleTracer.configureHoneycomb({
    required String apiKey,
  }) {
    return _instance ??= SimpleTracer._internal(
      Dio(),
      options: BaseOptions(
        baseUrl: 'https://api.honeycomb.io',
        headers: {
          'X-Honeycomb-Team': apiKey,
          'Content-Type': 'application/x-protobuf',
        },
      ),
    );
  }

  ///
  /// Getters
  ///

  /// Returns the singleton instance of [SimpleTracer]
  static SimpleTracer get instance {
    if (_instance == null) {
      throw Exception(
          'SimpleTracer is not configured. Call configureHoneycomb first.');
    }
    return _instance!;
  }

  ///
  /// Functions
  ///

  /// Strats new trace
  /// [serviceName] is the name of the service that is being traced.
  /// [spanName] is the name of the span that is being traced.
  /// [spanKind] is the kind of span that is being traced.
  /// [attributes] are the attributes of the span.
  /// [traceId] is the trace ID of the span.
  /// [spanId] is the span ID of the span.
  Trace startTrace({
    required String serviceName,
    required String spanName,
    SpanKind spanKind = SpanKind.client,
    Map<String, dynamic>? attributes,
    String? traceId,
    String? spanId,
  }) {
    final trace = Trace(
      serviceName: serviceName,
      spanName: spanName,
      spanKind: spanKind,
      attributes: attributes ?? {},
      traceId: traceId ?? '',
      spanId: spanId ?? '',
    );
    _traces.add(trace);
    return trace;
  }

  /// Ends the trace with the given [traceId].
  Trace endTrace(String traceId) {
    final trace =
        _traces.firstWhere((trace) => trace.traceId == traceId, orElse: () {
      throw Exception('Trace with ID $traceId not found');
    })
          ..end();
    return trace;
  }

  /// Find trace with the given [traceId].
  Trace findTrace(String traceId) {
    final trace =
        _traces.firstWhere((trace) => trace.traceId == traceId, orElse: () {
      throw Exception('Trace with ID $traceId not found');
    });
    return trace;
  }

  /// Send trace data to the server and remove it from the list of traces.
  /// [trace] is the trace to be sent
  static Future<void> sendTrace(Trace trace) async {
    if (_instance == null) {
      throw Exception(
          'SimpleTracer is not configured. Call configureHoneycomb first.');
    }
    await _instance!._sendTraceData(trace);
    _instance!._traces.remove(trace);
    trace.dispose();
  }

  ///
  /// Private Methods
  ///

  /// Sends trace data to the server.
  Future<void> _sendTraceData(Trace trace) async {
    final data = trace.encodedData;
    try {
      final response = await _dio.post<dynamic>(
        '/v1/traces',
        data: data,
      );
      if (response.statusCode != 200) {
        throw Exception('Failed to send trace data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to send trace data: $e');
    }
  }
}
