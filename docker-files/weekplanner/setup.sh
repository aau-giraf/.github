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
sdkmanager "system-images;android-30;google_apis_playstore;x86_64" "build-tools;33.0.1" "platforms;android-30"
sdkmanager "platform-tools"
sdkmanager --licenses

avdmanager create avd --name weekplanner --abi google_apis_playstore/x86_64 -k "system-images;android-30;google_apis_playstore;x86_64" --device "pixel_c"