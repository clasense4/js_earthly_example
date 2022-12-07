VERSION 0.6
FROM node:16.18.0-alpine
WORKDIR /js-example

deps:
    COPY package.json ./
    COPY package-lock.json ./
    RUN npm install
    # Output these back in case npm install changes them.
    SAVE ARTIFACT package.json AS LOCAL ./package.json
    SAVE ARTIFACT package-lock.json AS LOCAL ./package-lock.json

build:
    FROM +deps
    COPY src src
    RUN mkdir -p ./dist && cp ./src/index.html ./dist/
    RUN npx webpack
    SAVE ARTIFACT dist /dist AS LOCAL dist