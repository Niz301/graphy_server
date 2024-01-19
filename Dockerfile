FROM node:18.18.2

RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
Run npm install

EXPOSE  8080

CMD [ "node",  "index.js" ]
