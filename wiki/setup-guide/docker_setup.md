# Dockerized setup
This guide will setup giraf using Docker, by automating the dependencies with docker compose.
# Prerequisites

## Android SDK ([Linux](./linux_setup.md)/[Windows](./windows_setup.md.md))
([MacOS setup](mac_setup.md) slightly different)

Install the newest Android SDK, it can either be installed through Android Studio's SDK manager or by installing the commandline tools from here: <a href="https://developer.android.com/studio">Android Studio</a>, and then running the `sdkmanager`.
To ease the use of Android please add the following to your environment variables:

- A new variable called `ANDROID_HOME`, which should poit to your Android installation directory
- A new path to your `PATH` variable, which should point to the sdk/platform-tools folder of your Android installation

## Create an Android emulator ([Linux](./linux_setup.md)/[Windows](./windows_setup.md.md)/[MacOS](./mac_setup.md))
Creating an **Pixel C** emulator is recommended.

<a href="https://developer.android.com/studio/run/managing-avds">Create a emulator</a> with Android Studio
- Open the AVD Manager in Android Studio 
- Click "Create Virtual Device" 
- In the new window choose "Tablet" -> Pick any of the available devices and the click "Next" 
- Select a system image for your emulator, if none are downloaded, then select the newest possible one to download 
- After the download choose it and select "Next" 
On the final page ake sure that the standard orientation is set to "Landscape" and then click finish

## Install Docker desktop
You can find the information of how to install Docker for your OS, here <a href="https://docs.docker.com/get-docker/">Docker desktop</a>

## Setup VS Code
If not already installed then install VS Code, which can be found here <a href="https://code.visualstudio.com/download">Visual Studio Code</a>

After installing it, please add the following extensions:
- <a href="https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack">Remote Development</a>
- <a href="https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter">Flutter</a>
- <a href="https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csharp">C#</a>


# 1. Dockerize Giraf
Download [docker-giraf](/docker-giraf/) and from root run:
```console
$ docker compose up -d
```
This will build the services and run the images.

Do NOT use `sudo docker compose up`, it will use Docker Engine and not Docker Desktop. Docker Engine does not work with VS Code (as of 2022).

# 2. Open containers in VS Code
Open each of the containers using VS Code by

- Click the green/blue arrows in the bottom left corner
- Search for *Attach to running container* and choose **web-api** or **frontend**.

VS Code will now open the container, which you will use to develop in.

# 3. web-api setup
Setup the web-api for local development by running these commands:

```console
$ cd /home/developer/web-api/GirafRest
$ dotnet restore
$ dotnet-ef database update
$ dotnet run --sample-data
```

# 4. frontend setup
Setup of frontend requires emulator startup from the host machine and connecting to emulator from frontend container.

## 1. Host machine
Run emulator on host machine with Android Studio.
<!-- On your host machine go to your -->
### Linux terminal (optional) 
On linux this can be done through the terminal.

Go to the emulator system directory, then run your created emulator.
```console
$ cd /home/<user>/Android/Sdk/emulator
$ ./emulator -list-avds             # List all available avds
$ ./emulator -avd <emulator-name>   # Pixel_C_API_30
```
After emulator has fully started, set the target device to listen for a TCP/IP connection on port 5555.
```console
$ adb tcpip 5555
```

## 2. Frontend container
### Setup for local development
- Go to `/home/developer/workspace/weekplanner/lib/main.dart`.

- Change `'assets/environments.dev.json'` to `'assets/environments.local.json'` on line 29.

### Connect to host emulator
In the frontend container, connect to your emulator running on the host machine.
```console
$ adb connect host.docker.internal:5555
```
Now run the weekplanner with the connected emulator. 
```console
$ cd /home/developer/workspace/weekplanner
$ flutter run -d host.docker.internal:5555
```

If a Gradle build error happens, then run `flutter run -d host.docker.internal:5555` again.

- `Gradle build daemon disappeared unexpectedly (it may have been killed or may have crashed)`
