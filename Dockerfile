FROM node:10-alpine

LABEL maintainer = "BELAYET HOSSAIN"
LABEL email = "soykethandymama@gmail.com"
LABEL version = "1.0"

WORKDIR /opt/app

RUN apk update && apk add yarn
RUN yarn global add nodemon

COPY package.json .
RUN yarn

COPY . .