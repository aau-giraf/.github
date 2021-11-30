# MySQL Access and configuration

The following steps need to be executed to access the MySQL database:

1. Get access to the server that the MySQL container is running on via the ssh gateway.

2. After getting access, use the command ```docker ps``` to show all the containers that are active on the server.

3. Run the command ```docker exec -it <id of the container that MySQL is running on> /bin/bash```.

4. Run the command ```mysql -u root -p```.

5. Indtast passwordet, i kan få dette fra Ulrik i en KeePass fil.

If all of these steps have been followed, the you should have acces to the database, and be able to run MySQL commands directly in the console. If not, the make sure that sql monitor is installed, and that you have sudo privileges.

Here is a short list with useful commands:

- ```show databases``` shows all the different instances of the database.

- ```use <name of the database>``` Specifies that it is this specific database instance the commands should effect.
