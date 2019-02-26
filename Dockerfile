FROM node:8.9-alpine

ENV https_proxy http://10.201.120.17:3128

RUN mkdir /app
WORKDIR /app

ADD package.json /app
ADD package-lock.json /app
RUN npm install

ADD server.js /app

EXPOSE 3000

CMD [ "npm", "start" ]
