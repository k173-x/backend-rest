FROM node:lts-alpine

RUN mkdir -p /usr/src/samhita-REST && chown -R node:node /usr/src/samhita-REST

WORKDIR /usr/src/samhita-REST

COPY . /usr/src/samhita-REST/

USER node

RUN yarn install 

COPY --chown=node:node . .

EXPOSE 3000
