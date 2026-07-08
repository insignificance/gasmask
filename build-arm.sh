#!/bin/bash
set -eu

# 将 arm64 构建产物固定输出到项目内，方便在 Finder 中直接找到。
BUILD_DIR="$PWD/build/arm64"
DERIVED_DATA_DIR="$PWD/build/DerivedData-arm64"

rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"

xcodebuild \
  -project "Gas Mask.xcodeproj" \
  -scheme "Gas Mask" \
  -configuration Release \
  -arch arm64 \
  -derivedDataPath "$DERIVED_DATA_DIR" \
  CONFIGURATION_BUILD_DIR="$BUILD_DIR" \
  CODE_SIGN_IDENTITY="" \
  CODE_SIGNING_ALLOWED=NO \
  CODE_SIGNING_REQUIRED=NO

echo "Build output: $BUILD_DIR/Gas Mask.app"
