import 'package:dio/dio.dart';
import 'package:simple_tracer/src/model/trace_model.dart';

/// {@template simple_tracer}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class SimpleTracer {
  final Dio _dio;
  final String _endpoint;
  final String _apiKey;

  static SimpleTracer? _instance;

  SimpleTracer._internal(this._dio, this._endpoint, this._apiKey);

  ///
  /// Constructors
  ///

  /// Configures and returns the singleton instance of [SimpleTracer]
  factory SimpleTracer.configureHoneycomb({
    required String apiKey,
  }) {
    return _instance ??= SimpleTracer._internal(
      Dio(),
      'https://api.honeycomb.io',
      apiKey,
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
        '$_endpoint/v1/trace',
        data: data,
        options: Options(
          headers: {
            'X-Honeycomb-Team': _apiKey,
            'Content-Type': 'application/x-protobuf',
            'User-Agent': 'simple_tracer/1.0',
          },
        ),
      );
      if (response.statusCode != 200) {
        throw Exception('Failed to send trace data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to send trace data: $e');
    }
  }
}
