# Viewing the server

It is possible to view the servers and all the services and containers running on them. This can be done through portainer, which is a monitoring service. This is done by typing the external ip of the master server 00, into the address bar followed by ":9000". This should take you to a login site where you login using the appropriate username and password. These can be obtained from the KeePass file that Ulrik has.

## What can be seen

Using portainer allows you to view all of the services and containers that are running on the servers. This includes what images the different containers are running and how many replicas there are, and their individual statuses. In addition it is possible to stop, restart, kill, and create more replicas in portainer, allowing for the services to be scaled. This, however, should be done with caution.
