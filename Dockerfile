FROM node:8.9-alpine

RUN mkdir /app
WORKDIR /app

ADD package.json /app
ADD package-lock.json /app
RUN npm install

ADD server.js /app

EXPOSE 3000

CMD [ "npm", "start" ]
