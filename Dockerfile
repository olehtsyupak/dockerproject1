FROM node:17-alpine

ENV MONGO_DB_USERNAME="${DB_USERNAME}" \
    MONGO_DB_PWD="${DB_PWD}"

RUN mkdir -p /home/app

COPY ./app /home/app

WORKDIR /home/app

RUN npm install

CMD ["node", "server.js"]
