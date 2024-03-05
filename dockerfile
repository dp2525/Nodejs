FROM node:14.17.0-alpine
WORKDIR /app
COPY package*.json ./
COPY index.html ./
RUN npm install
RUN npm install express
ADD server.js ./
CMD [ "node", "server.js"]