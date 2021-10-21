# Set up the base of the image as Ubuntu, and install the needed packages
FROM ubuntu:18.04
RUN apt update -y && apt-get -y install locales curl git unzip xz-utils zip libglu1-mesa

# Create a developer user
RUN useradd -ms /bin/bash developer
USER developer
WORKDIR /home/developer

# Install the necessary SDK's and so on needed for the application
FROM openjdk:11

FROM androidsdk/android-30

FROM cirrusci/flutter:2.0.5

# Clone the api-client repository from github
WORKDIR /home/developer
RUN git clone https://github.com/aau-giraf/api_client.git

# Should be deleted 
COPY ./api-client/setup.sh /home/developer/api_client

# Move the working directory to the correct location
WORKDIR /home/developer/api_client

# Command that will make sure the container keeps running
ENTRYPOINT ["tail", "-f", "/dev/null"]