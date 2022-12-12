# Set up the base of the image as Ubuntu, and install the needed packages
FROM ubuntu:22.04

# Install the needed packages
RUN apt update && apt-get -y install \ 
    locales \ 
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    build-essential \
    openjdk-11-jdk \
    cmake --no-install-recommends \
    clang \
    ninja-build \
    pkg-config \
    libgtk-3-dev 

# Create a developer user
RUN useradd -ms /bin/bash developer
USER developer
WORKDIR /home/developer

# Install the necessary SDK's and so on needed for the application
#FROM openjdk:11

#FROM androidsdk/android-30

#FROM cirrusci/flutter:3.3.8

RUN wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.3.8-stable.tar.xz
RUN tar -xf flutter_linux_3.3.8-stable.tar.xz && rm flutter_linux_3.3.8-stable.tar.xz
ENV PATH "$PATH:/home/developer/flutter/bin"

# Clone the api-client repository from github
WORKDIR /home/developer/workspace
RUN git clone https://github.com/aau-giraf/api_client.git

# Should be deleted 
#COPY ./api-client/setup.sh /home/developer/api_client

# Move the working directory to the correct location
WORKDIR /home/developer/workspace/api_client

RUN flutter doctor
RUN flutter pub get

# Command that will make sure the container keeps running
#ENTRYPOINT ["tail", "-f", "/dev/null"]