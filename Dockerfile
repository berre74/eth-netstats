FROM node:12.18.1
LABEL maintainer="SE <bernard@hotmail.be>"

RUN mkdir -p /usr/src/app

# install app
WORKDIR /usr/src/app
COPY . . 
RUN npm install
RUN npm install -g grunt-cli
RUN grunt all

# start app
EXPOSE 3004
CMD [ "npm", "start" ]
