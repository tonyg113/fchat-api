FROM node:latest

MAINTAINER TonyG tonyg11381@gmail.com

# Create app directory
RUN mkdir -p /home/node/fchat-api

# Clone project from git
RUN git clone https://github.com/tonyg113/fchat-api.git /home/node/fchat-api

# Install app dependencies from package.json file
RUN cd /home/node/fchat-api && pwd && ls -al && npm install

# NOTE: in docker-compose.yml, replace line 'image: "node:latest"' with line 'build: .' to build image from this Dockerfile