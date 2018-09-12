# This Dockerfile creates a conatiner with devops tools

- To build the container.

cd to cloned directory

docker build -t ubuntu/devops:v1 .

- To start the container.

docker run -it ubuntu/devops:v1 /bin/bash
