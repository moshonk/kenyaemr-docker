# Building the image
docker build -t 10.50.80.56:5005/kenyaemr:17.0.4 .
# Openmrs platform docker
This a docker image for kenya emr distribution
It contains everything needed to run kenya emr. Enable users to get started without having to setup the distrution themselves
It includes the runtime environment, modules, war file, and the required docker files.
Rename the main.env.example to main.env and use
```docker run --env-file=main.env```
to override the env variables defined in the docker file  refer to http://ryannickel.com/html/playing_with_docker_enviornment_variables.html

# Docker-compose
build the image and run 'docker-compose up -d'
if you run into mysql privileges error
1. docker-compose exec kenyaemr-mysql /bin/bash
2. mysql -u root -p 
3. grant all privileges on *.* to 'openmrs'@'%';
4. flush privileges;
5. docker-compose restart kenyaemr

