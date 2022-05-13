# Netflex
This project is a web application that allows you to search movies, and find what you should watch next with your friends based on your group's preferences. The application is built with FastAPI, VueJS and MongoDB.

## Architecture de Microservices

Groupe: Gourc Mathis, Mabicka Guy et Matsepa Dmytro.

## Dependent repositories
### Front-end
* [VueJS](https://github.com/gourcmathis/nx-vuejs)

### Back-end
* [Database (MongoDB)](https://github.com/gourcmathis/nx-mongodb)
* [API - CRUD](https://github.com/gourcmathis/nx-crud)
* [API - IMDb](https://github.com/gourcmathis/nx-api-imdb)

## Environment variables
Before running the application, you have to create a .env file in this directory with the following lines:

    API_key=YOUR-IMDB-API-KEY

    MONGODB_NAME=YOUR-DB-NAME 
    MONGODB_USER=YOUR-USERNAME
    MONGODB_PASSWORD=YOUR-PASSWD

    DATABASE_URL_CONNECTION=mongodb://YOUR-USERNAME:YOUR-PASSWD@YOUR-DB-NAME:27017/
    # example: mongodb://admin:admin@netflexdb:27017/ 

    SECRET_KEY=YOUR-JWT-SECRET-KEY-HERE
    ALGORITHM=HS256
    ACCESS_TOKEN_EXPIRE_MINUTES=60 # minutes

## Run
To run the application, just run:
    
    ./install.sh
    docker-compose up --build

The website will be available on *localhost:8080*. We recommend to build and run the application on Docker Desktop (Windows version).

If you want to test FastAPI requests, you can visit *localhost:8000*
