FROM node:20-alpine

COPY package.json /src/

WORKDIR /src

RUN npm install 

COPY . .

EXPOSE 10000

CMD ["node", "src/index.js"]