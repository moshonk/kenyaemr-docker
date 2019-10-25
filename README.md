# Openmrs platform docker
This a docker image for kenya emr distribution
It contains everything needed to run kenya emr. Enable users to get started without having to setup the distrution themselves
It includes the runtime environment, modules, war file, and the required docker files.
Rename the main.env.example to main.env and use
```docker run --env-file=main.env```
to override the env variables defined in the docker file  refer to http://ryannickel.com/html/playing_with_docker_enviornment_variables.html
