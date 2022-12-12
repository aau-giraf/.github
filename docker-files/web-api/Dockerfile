FROM mcr.microsoft.com/dotnet/sdk:6.0 

RUN apt-get update && apt-get -y install \
    locales \
    curl \
    git \ 
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    libc6-dev \
    libgdiplus

# Create a developer user
RUN useradd -ms /bin/bash developer
USER developer
WORKDIR /home/developer

# Setup .net packages
RUN dotnet tool install --global dotnet-ef
ENV PATH="${PATH}:/home/developer/.dotnet/tools"

# Clone the web-api repository from github
WORKDIR /home/developer
RUN git clone https://github.com/aau-giraf/web-api.git

# Add appsettings file for local development
COPY web-api/appsettings.Development.json /home/developer/web-api/GirafRest/

# Keep the container running
ENTRYPOINT ["tail", "-f", "/dev/null"]