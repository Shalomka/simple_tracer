# Simple Tracer

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

Simple implementation of opentelemetry tracing for flutter and dart projects.

## Installation 💻

**❗ In order to start using Simple Tracer you must have the [Dart SDK][dart_install_link] installed on your machine.**

Install via `dart pub add`:

```sh
dart pub add simple_tracer
```
---

## Usage

The SimpleTracer class in your code is designed to send trace data to a server (specifically Honeycomb in this case). Internaly it uses the Dio package for HTTP requests to send protobuf opentelemetry data to the configured server.

To avoid using context, DI or service locators SimpleTracker follows a singleton pattern to ensure only one instance of the tracer is configured and used throughout the application.


```dart
import 'package:simple_tracer/simple_tracer.dart';
import 'package:simple_tracer/trace_model.dart';

void main() async {
  // Step 1: Configure the tracer
  SimpleTracer.configureHoneycomb(apiKey: 'your-honeycomb-api-key');

  // Step 2: Create a Trace object
  final trace = Trace(
    // Populate the trace object with necessary data
    ...
  );
  await _doSomething();
  // end trace when done
  trace.end();

  // Step 3: Send the trace to the server
  try {
    await SimpleTracer.sendTrace(trace);
    print('Trace sent successfully!');
  } catch (e) {
    print('Failed to send trace: $e');
  }
}
```

---

## Re-Compiling Otel Proto Files

**❗ This is only needed if or when the otel project updates the standard.**

It takes all protos from opentelemetry folder and generates corresponding dart classes to /lib/src/generated.

Run this from the core folder of the project:

```sh
./compile_otel.sh
```

---

## Continuous Integration 🤖

Simple Tracer comes with a built-in [GitHub Actions workflow][github_actions_link] powered by [Very Good Workflows][very_good_workflows_link] but you can also add your preferred CI/CD solution.

Out of the box, on each pull request and push, the CI `formats`, `lints`, and `tests` the code. This ensures the code remains consistent and behaves correctly as you add functionality or make changes. The project uses [Very Good Analysis][very_good_analysis_link] for a strict set of analysis options used by our team. Code coverage is enforced using the [Very Good Workflows][very_good_coverage_link].

---

## Running Tests 🧪

To run all unit tests:

```sh
dart pub global activate coverage 1.2.0
dart test --coverage=coverage
dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage/lcov.info
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

[dart_install_link]: https://dart.dev/get-dart
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
