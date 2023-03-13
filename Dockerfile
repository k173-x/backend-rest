FROM node:lts-alpine

RUN mkdir -p /usr/src/samhita-rest && chown -R node:node /usr/src/samhita-rest

WORKDIR /usr/src/samhita-rest

COPY package.json yarn.lock ./

USER node

RUN yarn install 

COPY --chown=node:node . .

EXPOSE 3000
