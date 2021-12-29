# SmartHome-Compose

## About SmartHome app
This is my private project that have evolved from _SmartAquarium_, as its' extension the main goal of this repository is to be able to gather and report data from multiple sensors/devices.

Please be aware that this is my side-off project, thus there can be still some bugs.

At the moment app is running on RPi4 8gb and for that machine it has been developed/deployed.

### Main parts

- Database - running on PostgresSQL 11, a central part of the system where all data is stored,
- Backend - build on Flask, it is a wrapper for SQL and provides endpoint for all sensors and Front-End,
- FrontEnd - build on Flask, this provies user-friendly GUI,
- Tauron - a ETL service for downloading data from Tauron energy provider,
- SolarMan - a ETL service for downloading data from solar panels.


## Building the app

Simply run 

```sudo | bash init_app.sh```

it will download all services as GitHub repository and then all services shall be build and composed.

> For several services there can be a error because .env file is not in the repo, so docker-compose.yaml should be removed from init_app.sh (#TODO)