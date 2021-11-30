# Viewing the server

It is possible to view the servers and all the services and containers running on them. This can be done through portainer, which is a monitoring service. This is done by typing the external ip of the master server 00, into the address bar followed by ":9000". This should take you to a login site where you login using the appropriate username and password. These can be obtained from the KeePass file that Ulrik has.

## Server actions
Now that you have access to the server you can start making changes. Do be careful when doing this though. The following is a list of the actions that might be interesting for future develeopment.
- Update images.
- Modify the nginx configuration file.
- Check the appsettings files
- Modify the databases.(Discussed in the MySQL part of the wiki)


### Update the images
Portainer should automatically update the images used by the docker containers. However it might be necessary to manually update images or upload new images for the containers to use. To do this, ssh into the server, and run the command ```sudo docker pull ghcr.io/aau-giraf/web-api:<tag name>``` this pulls the image with the corresponding tag name. To use the image in portainer go to the stack, and navigate into the editor, then update the file to match.

### Modify the nginx config file and appsettings files
If the nginx file ever needs to be updated then it can be done by connecting to the server and cd to the root folder. From here the swarm-nfs directory is available. In this directory is the nginx directory where the config file is. To modify and/or view it, use the command ```sudo nano <file name>```. For the appsettings files go to the swarm-nfs directory and into the api folder, then use the aforementioned command.

# Viewing with portainer

Using portainer allows you to view all of the services and containers that are running on the servers. This includes what images the different containers are running and how many replicas there are, and their individual statuses. In addition it is possible to stop, restart, kill, and create more replicas in portainer, allowing for the services to be scaled. This, however, should be done with caution.
