FROM node:lts-alpine

RUN mkdir /usr/src/samhita-rest && chown -R node:node /usr/src/samhita-rest

WORKDIR /usr/src/samhita-rest

COPY package.json yarn.lock ecosystem.config.json jest.config.js ./

USER node

RUN yarn install && yarn start

COPY --chown=node:node . .

EXPOSE 3000
