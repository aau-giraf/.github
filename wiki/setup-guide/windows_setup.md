# Setup the project on Windows
In this guide you will learn how to setup the weekplanner, api-client and web-api repos, which are needed for development on the weekplanner application.

## Prerequisites
Before setting up the project you will need to have installed the following IDE's:

- Flutter IDE \
    *For Flutter you can currently only use Android Studio or VS Code* \
    If you do not wanna deal with manually configuring the emulator and so on, then choose Android Studio.

- C# IDE \
    *For C# you can use either Visual Studio, JetBrains Rider or VS Code*

After installing the IDE, please make sure to add extensions for Flutter in the Flutter IDE. After setting up the IDE's you need to install the following:

1. Java JDK \
    Install the Java JDK from here https://jdk.java.net/java-se-ri/11, after the installation you need to add Java to your environment variables. In the environment variables you need to add:
    - A new variable called JAVA_HOME, which should point to your JDK installation directory
    - A new path to your PATH variable, which should point to the bin folder of your JDK installation

2. Android SDK \
    Install the newest Android SDK, it can either be installed through Android Studio's SDK manager or by installing the commandline tools from here: https://developer.android.com/studio, and then running the sdkmanager. \
    To ease the use of Android please add the following to your environment variables:
    - A new variable called ANDROID_HOME, which should poit to your Android installation directory
    - A new path to your PATH variable, which should point to the sdk/platform-tools folder of your Android installation

3. Flutter Framework\
    Install Flutter **2.0.5** using the steps described here: https://flutter.dev/docs/get-started/install, where the **2.0.5** version of Flutter can be found here https://flutter.dev/docs/development/tools/sdk/releases

4. Install .Net Core \
    Install dotnet **3.1** from this link: https://dotnet.microsoft.com/download/dotnet/3.1

5. Install MySQL \
    Install MySQL Server **8.0** from this link: https://dev.mysql.com/downloads/mysql/ \
    When installing/setting up set the root user's password to *password* 
    > After the installation you can choose to add your own user if wanted

## Weekplaner repository
1. Clone the git repository: https://github.com/aau-giraf/weekplanner.git
2. Run the `flutter pub get` command in the root of the cloned repo
3. Create an emulator 
    - Open the AVD Manager in Android Studio 
    - Click "Create Virtual Device" 
    - In the new window choose "Tablet" -> Pick any of the available devices and the click "Next" 
    - Select a system image for your emulator, if none are downloaded, then select the newest possible one to download 
    - After the download choose it and select "Next" 
    On the final page ake sure that the standard orientation is set to "Landscape" and then click finish
4. Run the application, by choosing the created emulator and start the build

## Api-client repository
1. Clone the git repository: https://github.com/aau-giraf/api_client.git
2. Run the `flutter pub get` command in the root of the cloned repo

## Web-api repository
1. Clone the git repository: https://github.com/aau-giraf/web-api.git
2. Add development environment settings
    - Navigate to the GirafRest folder, and copy the file *appsettings.template.json* 
    - Name the new file *appsettings.Development.json* 
    - Make the following changes to the new file:
        - Change the DefaultConnection string, where server=localhost, port=3306, userid="theUserYouSpecifiedOrRoot", password="thePasswordForTheSpecificUser", database=giraf
        - Change Jwt.JwtKey on line 24 to a random string of 40 or more character
        - Change Jwt.JwtIssuer on line 25 to "Aalborg University"
3. Open a terminal at the location of the GirafRest folder, and run the following commands:
    - `dotnet tool install --global dotnet-ef`
    - `dotnet restore`
    - `dotnet-ef database update`
    - `dotnet run --sample-data`
