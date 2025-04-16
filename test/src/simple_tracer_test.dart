// ignore_for_file: prefer_const_constructors
import 'package:simple_tracer/simple_tracer.dart';
import 'package:test/test.dart';

void main() {
  group('SimpleTracer', () {
    test('can be instantiated', () {
      expect(
          SimpleTracer.honeycomb(
            serviceName: 'test_service',
            apiKey: 'test_api_key',
          ),
          isA<SimpleTracer>());
    });
  });
}
