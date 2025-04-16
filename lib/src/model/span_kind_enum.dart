import 'package:simple_tracer/src/generated/otel/opentelemetry/proto/trace/v1/trace.pb.dart';

/// SpanKind represents the kind of span in a trace and
/// mimics values from [Span_SpanKind] enum in OpenTelemetry.
/// It is used to specify the type of span being created.
/// The values are used to indicate the role of the span in the trace.
enum SpanKind {
  /// Indicates that the span represents a client request.
  client,

  /// Indicates that the span represents a server request.
  server,

  /// Indicates that the span represents a producer.
  producer,

  /// Indicates that the span represents a consumer.
  consumer,

  /// Indicates that the span represents an internal operation.
  internal,
  ;

  /// Converts a [SpanKind] to its corresponding [Span_SpanKind] value.
  Span_SpanKind toProto() {
    switch (this) {
      case SpanKind.client:
        return Span_SpanKind.SPAN_KIND_CLIENT;
      case SpanKind.server:
        return Span_SpanKind.SPAN_KIND_SERVER;
      case SpanKind.producer:
        return Span_SpanKind.SPAN_KIND_PRODUCER;
      case SpanKind.consumer:
        return Span_SpanKind.SPAN_KIND_CONSUMER;
      case SpanKind.internal:
        return Span_SpanKind.SPAN_KIND_INTERNAL;
    }
  }
}
