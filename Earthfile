VERSION 0.6
FROM node:16.18.0-alpine
WORKDIR /js-example

build:
    COPY package.json ./
    COPY yarn.lock ./
    RUN yarn
    SAVE ARTIFACT node_modules AS LOCAL node_modules