#!/bin/bash

# Update Ubuntu packages
apt-get update -y
apt-get upgrade -y

# Install the needed packages on Ubuntu
apt-get install -y  unzip xz-utils zip libglu1-mesa

# Run flutter (setup dependencies and licenses)
flutter doctor
flutter pub get