FROM node:14-alpine

COPY package.json /src/

WORKDIR /src

RUN npm install --silent

COPY . .

EXPOSE 8000

CMD ["npm", "start"]