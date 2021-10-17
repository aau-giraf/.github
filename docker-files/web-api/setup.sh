#!/bin/bash

# Update Ubuntu packages
apt-get update -y
apt-get upgrade -y

# Install the needed packages on Ubuntu
apt-get install -y locales unzip xz-utils zip libglu1-mesa libc6-dev libgdiplus

# Add appsettings file for development
cd ./GirafRest/
touch appsettings.Development.json
echo '{
    "ConnectionStrings": {
        "DefaultConnection": "server=db;port=3306;userid=root;password=password;database=giraf;Allow User Variables=True"
    },
    "Logging": {
        "IncludeScopes": false,
        "LogLevel": {
            "Default": "Warning"
        }
    },
    "Email": {
        "FromName": "Giraf",
        "FromAddress": "<email>",

        "LocalDomain": "student.aau.dk",

        "MailServerAddress": "smtp.aau.dk",
        "MailServerPort": "587",

        "UserId": "<email>",
        "UserPassword": "<password>"
    },
    "Jwt": {
        "JwtKey": "rfjenrfkjbekjrbfejrnfkjernvkjgbrhgkebrkfkrlef",
        "JwtIssuer": "Aalborg University",
        "JwtExpireDays": 30
    },
    "IpRateLimiting": {
        "EnableEndpointRateLimiting": false,
        "StackBlockedRequests": false,
        "HttpStatusCode": 429,
        "GeneralRules": [
            {
                "Endpoint": "*",
                "Period": "1s",
                "Limit": 20
            }
        ]
    }
}' >> appsettings.Development.json

# Setup .net packages and add data to the database
dotnet tool install --global dotnet-ef
dotnet restore
dotnet-ef database update
dotnet run --sample-data