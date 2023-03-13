FROM node:lts-alpine

RUN mkdir -p /usr/src/ && chown -R node:node /usr/src/

RUN git clone https://github.com/k173-x/samhita-rest.git /usr/src/samhita-rest

RUN chown -R node:node /usr/src/samhita-rest

WORKDIR /usr/src/samhita-rest

USER node

RUN yarn install && yarn start

COPY --chown=node:node . .

EXPOSE 3000
