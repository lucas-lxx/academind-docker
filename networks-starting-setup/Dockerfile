FROM node:23-alpine3.20

WORKDIR /app

COPY ./package.json ./

RUN npm install

VOLUME ["/app/node_modules"]

COPY . .

CMD ["npm", "start"]
