FROM node:lts-alpine

RUN mkdir -p /usr/src/ && chown -R node:node /usr/src/

WORKDIR /usr/src/

COPY package.json yarn.lock ./

USER node

RUN yarn install 

COPY --chown=node:node . .

EXPOSE 3000
