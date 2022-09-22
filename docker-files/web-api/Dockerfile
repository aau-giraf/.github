# Set up the base of the image as Ubuntu, and install the needed packages
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y locales curl git unzip xz-utils zip libglu1-mesa libc6-dev libgdiplus

# Create a developer user
RUN useradd -ms /bin/bash developer
USER developer
WORKDIR /home/developer

# Install the necessary SDK's and so on needed for the application
FROM mcr.microsoft.com/dotnet/sdk:6.0 
ENV PATH="${PATH}:/root/.dotnet/tools"

# Clone the web-api repository from github
WORKDIR /home/developer
RUN git clone https://github.com/aau-giraf/web-api.git

# Should be deleted later on
COPY ./web-api/setup.sh /home/developer/web-api

# Move the working directory to the correct location
WORKDIR /home/developer/web-api

# Command that will make sure the container keeps running
ENTRYPOINT ["tail", "-f", "/dev/null"]
