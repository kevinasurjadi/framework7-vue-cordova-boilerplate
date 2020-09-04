FROM node:12.18.3-alpine

LABEL maintainer="Kevin Alexander Surjadi (gt_kevin_alexander@hotmail.com)"

RUN apk add python3

RUN npm install -g framework7-cli --unsafe-perm
RUN npm install -g cordova --unsafe-perm

WORKDIR /var/www

COPY ./app/package.json .
COPY ./app/package-lock.json .

RUN npm install

COPY ./app .
