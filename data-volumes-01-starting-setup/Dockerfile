FROM node:14

WORKDIR /app

COPY ./package.json /app

RUN npm install

COPY . .

EXPOSE ${PORT}

CMD ["npm", "start"]
