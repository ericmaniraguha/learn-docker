# Link of docker
https://www.cloudsavvyit.com/13955/how-to-check-if-the-docker-daemon-or-a-container-is-running/

# check public images in my repo without to do anything - saved as container
docker search ubuntu

# feature of docker
docker pull ubuntu-upstart

# checking with systemctl
sudo systemctl status docker

# command to use when is denied
sudo chmod 666 /var/run/docker.sock

# tell docker to package our application
docker build -t hello-docker .

# see all the images, include the one we created 
docker image ls

# run image from any machine which is using docker 
docker run hello-docker

# I can go to another machine or production and pull and run the image 
https://labs.play-with-docker.com 

# run docker image using command 
docker run -it id_image_pasthere /bin/bash


example: 
1. docker run -it  c919045c4c2b /bin/bash

2. apt-get update   

# This one is will download docker container of node which is stored in public repository of node 
3. docker run -it node /bin/bash