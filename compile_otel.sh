#!/bin/bash

# This script assumes it is run from the root of your Dart project,
# and that the 'opentelemetry/proto' directory exists in the root.

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Configuration ---
# Directory containing the 'proto' subdirectory (relative to project root)
PROTO_BASE_DIR="opentelemetry"
# The specific directory containing the actual proto files
PROTO_SRC_DIR="${PROTO_BASE_DIR}/proto"
# Directory where the generated Dart code will be placed (relative to project root)
# Standard practice is 'lib/src/generated' or similar
DART_OUTPUT_DIR="lib/src/generated/otel"

# --- Check for Dependencies ---
echo "Checking prerequisites..."

if ! command -v dart &> /dev/null; then
    echo "Error: 'dart' command not found. Please install the Dart SDK."
    exit 1
fi

if ! command -v protoc &> /dev/null; then
    echo "Error: 'protoc' command not found. Please install the Protocol Buffer Compiler."
    echo "See: https://grpc.io/docs/protoc-installation/"
    exit 1
fi

echo "Ensure 'protoc_plugin' and 'grpc_tools' are globally activated via pub:"
echo "  dart pub global activate protoc_plugin"
echo "  dart pub global activate grpc_tools"
echo "(Make sure the pub global bin directory is in your PATH)"
echo "Continuing..."
sleep 2

# --- Pre-Compilation Steps ---

# Check if the proto source directory exists
if [ ! -d "$PROTO_SRC_DIR" ]; then
    echo "Error: Proto source directory '$PROTO_SRC_DIR' not found in the current directory."
    echo "Please ensure you copied the 'opentelemetry' folder correctly to the project root."
    exit 1
fi

# Create the output directory if it doesn't exist, including parents
echo "Creating output directory '$DART_OUTPUT_DIR'..."
mkdir -p "$DART_OUTPUT_DIR"

# --- Compilation ---

echo "Finding all .proto files in '$PROTO_SRC_DIR'..."
# Use find to locate all .proto files within the source directory
# Pipe them to xargs for protoc
find "$PROTO_SRC_DIR" -name "*.proto" -print0 | xargs -0 \
    protoc \
    --proto_path=. \
    --dart_out=grpc:"$DART_OUTPUT_DIR"

# Explanation of protoc flags:
# --proto_path=. : Tells protoc to look for imported files starting from the
#                  current directory (your project root). Since your imports
#                  are like "opentelemetry/proto/common/v1/common.proto"
#                  and the 'opentelemetry' directory exists here, this works.
# --dart_out=grpc:"$DART_OUTPUT_DIR": Tells protoc to use the Dart plugin,
#                                     generate gRPC code, and put the output files
#                                     into the specified directory.
# The arguments after the flags are the relative paths to the .proto files found by find/xargs.

echo "--------------------------------------------------"
echo "Dart code generation complete!"
echo "Generated files are in: $DART_OUTPUT_DIR"
echo "The generated code structure will mirror the proto structure, e.g.:"
echo "  $DART_OUTPUT_DIR/opentelemetry/proto/trace/v1/trace.pb.dart"
echo "Remember to add necessary protobuf and grpc dependencies to your pubspec.yaml"
echo "Example dependencies:"
echo "  protobuf: ^..."
echo "  grpc: ^..."
echo "--------------------------------------------------"

exit 0