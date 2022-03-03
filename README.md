# Link of docker
https://www.cloudsavvyit.com/13955/how-to-check-if-the-docker-daemon-or-a-container-is-running/

# docker will try to find container if is not going to find them it will start installing them
docker run ubuntu

# checking running process or running containers 
docker ps

# check all containers -stopped
docker ps -a

# check public images in my repo without to do anything - saved as container
docker search ubuntu

# run docker container 
docker run -it ubuntu

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

# ======================Linux command ================================================

eric_admin@eric-admin-HP-250-G6-Notebook-PC:~$ docker run -it hello-image
Hello Docker
eric_admin@eric-admin-HP-250-G6-Notebook-PC:~$ docker run -it ubuntu
root@70ae972a56bb:/# echo hello
hello
root@70ae972a56bb:/# whoami
root
root@70ae972a56bb:/# echo $0
bash
root@70ae972a56bb:/# ECHO $0
bash: ECHO: command not found
root@70ae972a56bb:/# Echo $0
bash: Echo: command not found
root@70ae972a56bb:/# history
    1  echo hello
    2  whoami
    3  echo $0
    4  ECHO $0
    5  Echo $0
    6  history
root@70ae972a56bb:/# !2
whoami
root

# package management
root@70ae972a56bb:/# apt

--check nono package
root@70ae972a56bb:/# nano

--
root@70ae972a56bb:/# apt-get

--list all packages 
root@70ae972a56bb:/# apt list

--update packages using before install a package
apt update

--right now we can install nano after update
apt install nano

--check if the package is well installed
root@70ae972a56bb:/# nano

--remove nano
root@70ae972a56bb:/# apt remove nano

# linux file system

# navigate on file system
--check where we are directory
root@70ae972a56bb:/# pwd

--lists items in mult. lines
root@70ae972a56bb:/# ls

-- as a list
root@70ae972a56bb:/# ls -1 

--as long details
root@70ae972a56bb:/# ls -l

here the 1st column = "permission"
2nd column 
3rd column = the owner of the this directory
4th column = size
5th the date

root@ecd1796a06de:/# cd etc/a      
adduser.conf  alternatives/ apt/  

root@ecd1796a06de:/# cd etc/apt/
root@ecd1796a06de:/etc/apt# 

--list all files in directory
root@ecd1796a06de:/etc/apt# 

--get to the root directory
root@ecd1796a06de:/etc/apt# cd ../..
root@ecd1796a06de:/# 

--list files we have inside the directory 
root@ecd1796a06de:/# ls bin 


-- move to the root directory commands
root@ecd1796a06de:/# cd /root

--goback to home directory
root@ecd1796a06de:~# cd ..

--go to root directory again
root@ecd1796a06de:/# cd ~
root@ecd1796a06de:~# 


--create files inside root directory
root@ecd1796a06de:/# cd /root 
root@ecd1796a06de:~# mkdir test
root@ecd1796a06de:~# ls
test

--rename directory test to renamedtest
root@ecd1796a06de:~# mv test renamedtest
root@ecd1796a06de:~# ls
renamedtest
root@ecd1796a06de:~# 

--create files and multiple files once
root@ecd1796a06de:~# touch hello.txt
root@ecd1796a06de:~# ls
hello.txt  renamedtest
root@ecd1796a06de:~# touch file1.txt file2.txt file3.txt
root@ecd1796a06de:~# ls
file1.txt  file2.txt  file3.txt  hello.txt  renamedtest
root@ecd1796a06de:~# 

--go into the directory docker1
root@ecd1796a06de:~# cd docker1/
root@ecd1796a06de:~/docker1# 

--create mult files inside docker1, display in list, in line and details 
root@ecd1796a06de:~# cd docker1/
root@ecd1796a06de:~/docker1# touch file1.txt file2.txt file3.txt

root@ecd1796a06de:~/docker1# ls
file1.txt  file2.txt  file3.txt

root@ecd1796a06de:~/docker1# ls -1 
file1.txt
file2.txt
file3.txt

root@ecd1796a06de:~/docker1# ls -l
total 0
-rw-r--r-- 1 root root 0 Mar  3 19:15 file1.txt
-rw-r--r-- 1 root root 0 Mar  3 19:15 file2.txt
-rw-r--r-- 1 root root 0 Mar  3 19:15 file3.txt
root@ecd1796a06de:~/docker1# 

--rename and remove file 
root@ecd1796a06de:~/docker1# mv file1.txt hello-docker.txt
root@ecd1796a06de:~/docker1# ls
file2.txt  file3.txt  hello-docker.txt

root@ecd1796a06de:~/docker1# rm file2.txt
root@ecd1796a06de:~/docker1# ls
file3.txt  hello-docker.txt
root@ecd1796a06de:~/docker1# 

---remove all files which start with 
root@ecd1796a06de:~/docker1# rm file*
root@ecd1796a06de:~/docker1# ls
hello-docker.txt
root@ecd1796a06de:~/docker1# 













