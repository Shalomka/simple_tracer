import 'package:dio/dio.dart';
import 'package:simple_tracer/src/model/trace_model.dart';

/// {@template simple_tracer}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class SimpleTracer {
  final Dio _dio;
  final String _endpoint;
  final String _apiKey;
  const SimpleTracer._(
    this._dio,
    this._endpoint,
    this._apiKey,
  );

  /// Creates a new instance of [SimpleTracer] for
  /// honeycomb.io
  SimpleTracer.honeycomb({
    required String apiKey,
  }) : this._(
          Dio(),
          'https://api.honeycomb.io',
          apiKey,
        );

  /// Sends trace data to the server.
  Future<void> sendTraceData(Trace trace) async {
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
