# learn-docker

# command to use when is denied
sudo chmod 666 /var/run/docker.sock

# tell docker to package our application
docker build -t hello-docker .

# see all the images, include the one we created 
docker image ls

# run image from any machine which is using docker 
docker run hello-docker

# I can go to another machine or production, test, pull and run the image 
https://labs.play-with-docker.com 

