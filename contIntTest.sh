#!/bin/bash
set -e
xcodebuild -project 'ContinousIntegration.xcodeproj' -scheme 'ContinousIntegration' -destination 'platform=iOS Simulator,name=iPhone 11' test
xcodebuild -project 'ContinousIntegration.xcodeproj' -scheme 'ContinousIntegration' -destination 'generic/platform=iOS' -configuration Release build CODE_SIGNING_ALLOWED=NO

