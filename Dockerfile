FROM node:18.17.1

WORKDIR /app

COPY package.json .
COPY index.js .
COPY build .

RUN npm install -g npm@9.1.3
RUN npm install

EXPOSE 8080

CMD ["node", "index.js"]
