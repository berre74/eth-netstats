FROM node:12.18.1
ENV NODE_ENV=production
LABEL maintainer="SE <bernard@hotmail.be>"

RUN mkdir -p /usr/src/app

# install app
WORKDIR /usr/src/app
COPY . . 
RUN npm install
RUN npm install -g grunt-cli
RUN grunt

# start app
EXPOSE 3003
CMD [ "npm", "start" ]
