FROM node:23-alpine3.20

WORKDIR /app

COPY ./package.json ./
COPY ./package-lock.json ./

RUN npm install

VOLUME ["/app/node_modules"]

EXPOSE 3000

COPY . .

CMD ["npm", "start"]
