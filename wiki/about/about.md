# Project Architecture
The project currently consists of only the weekplanner application, where the application currently consists of the three repositories:
- weekplanner - *the frontend*
- api-client - *the middleware for HTTP request*
- web-api - *the backend*
And the server:
- MySQL - *The server which contains the different databases*

The frontend and the middleware is written in Flutter, whereas the backend is written in C#. The frontend uses the middleware to make HTTP requests to the backend's controllers, where the backend is the only part of the application that communicates with the database on the MySQL server.

If you wish to learn more about the different repos, and their inner workings, then please visit the Wiki's under each repository.

## Current state of project
As for the last semester (2021 - fall), we managed to implement the following elements:
- ...
- ...

Where the state of the project is that ...

## Ideas for future work
The remaining issues that needs to be worked on are as follows:
- ...
- ...

Where the *Good First Issues* for the first sprint of the semester will not deal with any of these features, but they will give the developers an idea of how the project works.