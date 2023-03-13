FROM node:lts-alpine

RUN mkdir -p /usr/src/ && chown -R node:node /usr/src/

WORKDIR /usr/src/

COPY . /usr/src/samhita-REST/

USER node

RUN yarn install 

COPY --chown=node:node . .

EXPOSE 3000
