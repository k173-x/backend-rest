FROM node:lts-alpine

RUN mkdir -p /usr/src/samhita-rest && chown -R node:node /usr/src/samhita-rest

RUN chown -R node:node /usr/src/samhita-rest

COPY package.json yarn.lock ecosystem.config.json jest.config.js ./

USER node

RUN yarn install && yarn start

COPY --chown=node:node . .

EXPOSE 3000
