FROM node:23-alpine3.20

WORKDIR /app

COPY ./package.json /app

RUN npm install

EXPOSE 3000

COPY . /app

CMD ["node", "server.js"]
