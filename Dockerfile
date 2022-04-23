FROM node:alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
RUN npm install nodemon

COPY . .

EXPOSE 3333

CMD ["npm","run","dev"]
