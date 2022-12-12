# Dockerized setup
This guide will setup giraf using Docker, by automating the dependencies with docker compose.

# 1. Install Docker desktop
You can find the information of how to install Docker for your OS, here <a href="https://docs.docker.com/get-docker/">Docker desktop</a>

# 2. Setup VS Code
If not already installed then install VS Code, which can be found here <a href="https://code.visualstudio.com/download">Visual Studio Code</a>

After installing it, please add the following extensions:
- <a href="https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack">Remote Development</a>
- <a href="https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter">Flutter</a>
- <a href="https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csharp">C#</a>

# 4. Create an Android emulator
<a href="https://developer.android.com/studio/run/managing-avds">Create a emulator</a> with Android Studio
- As described in [linux setup](linux_setup.md) (Weekplaner repository)
- Recommend creating an **Pixel C** emulator

# 5. Dockerize Giraf
Download [docker-giraf](/docker-giraf/) and from root run:
```console
$ docker compose build --no-cache
$ docker compose up -d
```
This will build the services and run the images.

# 6. Open containers in VS Code
Open each of the containers using VS Code by

- Click the green/blue arrows in the bottom left corner
- Search for *Attach to running container* and choose **web-api** or **frontend**.
<!-- - Pick the container you wanna setup first -->

VS Code will now open the container, which you will use to develop in...

# 7. web-api setup
Setup the web-api for local development by running these commands:

```console
$ cd /home/developer/web-api/GirafRest
$ dotnet restore
$ dotnet-ef database update
$ dotnet run --sample-data
```

# 8. frontend setup
Setup of frontend requires emulator startup from the host machine and connecting to emulator from frontend container.

## 1. Host machine
On your host machine go to your emulator system directory and run your created emulator.
```console
$ cd /home/<user>/Android/Sdk/emulator
$ ./emulator -avd <emulator-name> # Pixel_C_API_30
```
After emulator has fully started, set the target device to listen for a TCP/IP connection on port 5555.
```console
$ adb tcpip 5555
```

## 2. Frontend container
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