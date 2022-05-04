From ubuntu:latest 
ENV pp=/etc
Label org.opencontainers.image.authors="mail@gmail.com" \ 
      maintainer=mail@gmail.com \
      Description="This is my first image"
Maintainer mail@gmail.com
Run mkdir test # Add the test folder in /
Workdir $pp 
Run apt update && apt install -y tmux \ 
  zsh && mkdir test # Add the test folder in the working directory
CMD ["ls", "/etc"] # List /etc and quit

