FROM node:11-alpine

COPY two.js ./
COPY package*.json ./
RUN npm install

ARG tag
ENV TAG ${tag}

ENTRYPOINT ["node", "two.js" ]