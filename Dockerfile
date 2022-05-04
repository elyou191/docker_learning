From ubuntu:latest 
ENV pp=/etc
Label org.opencontainers.image.authors="youssefellamai99@gmail.com" \ 
      maintainer=youssefellamai99@gmail.com \
      Description="This is my first image"
Maintainer youssefellamai99@gmail.com
Run mkdir test # Add the test folder in /
Workdir $pp 
Run apt update &&  apt install tmux -y && mkdir test # Add the test folder in the working directory
CMD ["ls", "/etc"] # List /etc and quit

