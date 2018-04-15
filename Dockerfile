FROM node:9.11.1-alpine

RUN addgroup -S admin && adduser -S -G admin admin

ENV HOME=/home/admin

COPY package.json $HOME/app/
RUN chown -R admin:admin $HOME/*

USER admin

WORKDIR $HOME/app

RUN npm install