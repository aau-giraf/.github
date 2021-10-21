# Dockerized setup
In this guide you will setup the project using Docker containers, where all of the setup will be automated by using docker-compose and shell scripts.

## 1. Install Docker
You can find the information of how to install Docker for your OS, here https://docs.docker.com/get-docker/

## 2. Setup VS Code
If not already installed then install VS Code, which can be found here 

After installing it, please add the following extensions:
- Remote Development
- Flutter
- C#

## 3. Download the docker files
Open the **.github** repository (https://github.com/aau-giraf/.github), and download the files in the *docker-files*-folder. After downloading the files move them to a folder of your choosing.

## 4. Dockerize
Open a terminal and go to the folder where you saved the files. Then run *docker-compose up* in the terminal, the containers are know being created and it might take a while before it completes.

## 5. Finish the setup
Open each of the containers using VS Code by

- Click the green/blue arrows in the bottom left corner
- Search for *Attach to running container*
- Pick the container you wanna setup first

VS Code will now open the container, which you will use to develop in...

In each container you should run the setup.sh file, which is located in the /home/develop/*repo-name* folder. The command for running the file is ./setup.sh.

## 6. Running the project
When running the project you need to open the *weekplanner*-container, and then run the run.sh script. The container will now start up an emulator on which you can run the application.