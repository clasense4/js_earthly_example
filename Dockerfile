FROM node:16.18.0-alpine
WORKDIR /js-example

COPY package.json ./
COPY yarn.lock ./
RUN yarn