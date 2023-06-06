FROM node:16-alpine AS appbuild
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY ./src ./src
EXPOSE 4000
CMD npm start
