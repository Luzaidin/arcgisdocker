FROM node:14

RUN mkdir /app
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . /app

ENV HOST 0.0.0.0
CMD ["npm", "run", "serve"]