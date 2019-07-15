FROM node:latest
# Create app directory
WORKDIR /home/node
# Clone project from git
RUN git clone https://github.com/tonyg113/fchat-api.git
# Install app dependencies from package.json file
RUN cd fchat-api && pwd && ls -al && npm install

# NOTE: in docker-compose.yml, replace line 'image: "node:latest"' with line 'build: .' to build image from this Dockerfile