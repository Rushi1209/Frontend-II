FROM node:17

WORKDIR /home/scr/app

COPY package*.json ./

RUN npm install prettier -g

RUN npm install

COPY . .

RUN npm run build

EXPOSE 1337

CMD [ "node", "build/server.js" ]
