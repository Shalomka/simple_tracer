import 'package:dio/dio.dart';
import 'package:simple_tracer/src/model/trace_model.dart';

/// {@template simple_tracer}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class SimpleTracer {
  final Dio _dio;

  static SimpleTracer? _instance;

  SimpleTracer._internal(this._dio, {BaseOptions? options}) {
    _dio.options = options ?? BaseOptions();
  }

  ///
  /// Constructors
  ///

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

  /// Send trace data to the server
  static Future<void> sendTrace(Trace trace) async {
    if (_instance == null) {
      throw Exception(
          'SimpleTracer is not configured. Call configureHoneycomb first.');
    }
    await _instance!._sendTraceData(trace);
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
