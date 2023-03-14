FROM node:lts-alpine

WORKDIR /usr/src/samhita-rest

COPY package.json yarn.lock ecosystem.config.json jest.config.js ./

RUN yarn install 

COPY --chown=node:node . .

CMD [ "yarn", "start" ]

EXPOSE 3000
