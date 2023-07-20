FROM node:19.6

COPY package*.json ./
RUN npm install
COPY .. ./
CMD node index.js
