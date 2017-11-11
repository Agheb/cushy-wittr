FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
ADD package.json /usr/src/app/package.json
RUN npm install


VOLUME /usr/src/app
VOLUME /usr/src/node_modules

EXPOSE 8888 8889
CMD ["npm", "run","serve"]
