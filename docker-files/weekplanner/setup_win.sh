#!/bin/bash

# Update Ubuntu packages
apt-get update -y
apt-get upgrade -y

# Install the needed packages on Ubuntu
apt-get install -y locales unzip xz-utils zip libglu1-mesa

# Setup flutter and its dependencies
flutter doctor
flutter pub get