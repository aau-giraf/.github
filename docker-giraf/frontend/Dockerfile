FROM androidsdk/android-31

# Get additional SDK tools and SDK platform
RUN sdkmanager "build-tools;30.0.3"
RUN sdkmanager "platforms;android-29"
RUN chmod a+rwx -R /opt/android-sdk-linux/.android

# Install the needed packages
RUN apt update && apt -y install \
    locales \
    curl \
    git \
    unzip \
    xz-utils\
    zip \
    libglu1-mesa \
    wget \
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

# Download Flutter SDK
RUN wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.3.8-stable.tar.xz
RUN tar -xf flutter_linux_3.3.8-stable.tar.xz && rm flutter_linux_3.3.8-stable.tar.xz
ENV PATH "$PATH:/home/developer/flutter/bin"

# Clone weekplanner and api_client from github
WORKDIR /home/developer/workspace
RUN git clone https://github.com/aau-giraf/weekplanner.git
RUN git clone https://github.com/aau-giraf/api_client.git

# Accept license agreements
RUN flutter doctor --android-licenses

# Get weekplanner dependencies
WORKDIR /home/developer/workspace/weekplanner
RUN flutter pub get

# Get api_client dependencies
WORKDIR /home/developer/workspace/api_client
RUN flutter pub get

# Keep the container running
ENTRYPOINT ["tail", "-f", "/dev/null"]