FROM node:alpine

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY package*.json ./

RUN npm install
RUN npm install -g nodemon

COPY . .

EXPOSE 3000

CMD ["npm","run","dev"]
