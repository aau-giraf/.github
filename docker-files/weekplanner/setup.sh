#!/bin/bash

# Update Ubuntu packages
apt-get update -y
apt-get upgrade -y

# Install the needed packages on Ubuntu
apt-get install -y locales unzip xz-utils zip libglu1-mesa

# Setup flutter and its dependencies
flutter doctor
flutter pub get

# Setup the android emulator
sdkmanager "system-images;android-28;google_apis_playstore;x86_64" "build-tools;28.0.3" "platforms;android-28" --sdk_root="$ANDROID_SDK_ROOT"
sdkmanager "platform-tools" --sdk_root="$ANDROID_SDK_ROOT"
sdkmanager --licenses

adb --version
adb kill-server
adb devices