#!/bin/bash
set -eu

# 将 universal 构建产物固定输出到项目内，包含 arm64 和 x86_64。
BUILD_DIR="$PWD/build/universal"
DERIVED_DATA_DIR="$PWD/build/DerivedData-universal"

rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"

xcodebuild \
  -project "Gas Mask.xcodeproj" \
  -scheme "Gas Mask" \
  -configuration Release \
  -arch arm64 \
  -arch x86_64 \
  -derivedDataPath "$DERIVED_DATA_DIR" \
  CONFIGURATION_BUILD_DIR="$BUILD_DIR" \
  CODE_SIGN_IDENTITY="" \
  CODE_SIGNING_ALLOWED=NO \
  CODE_SIGNING_REQUIRED=NO

echo "Build output: $BUILD_DIR/Gas Mask.app"
