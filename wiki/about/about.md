# Project Architecture

The project currently consists of only the weekplanner application, where the application consists of the two repositories:

- weekplanner - _the frontend_
- web-api - _the backend_

The frontend and the middleware is written in Flutter, whereas the backend is written in C#. The frontend uses the middleware to make HTTP requests to the backend's controllers, where the backend is the only part of the application that communicates with the database on the MySQL server.

If you wish to learn more about the different repos, and their inner workings, then please visit the Wiki's under each repository.
