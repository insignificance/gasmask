#!/bin/bash
set -eu

xcodebuild \
  -project "Gas Mask.xcodeproj" \
  -scheme "Gas Mask" \
  -configuration Release \
  -arch arm64 \
  CODE_SIGN_IDENTITY="" \
  CODE_SIGNING_ALLOWED=NO \
  CODE_SIGNING_REQUIRED=NO
