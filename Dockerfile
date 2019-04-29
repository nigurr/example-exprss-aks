# Specify the image that this app is going to be built from.  This is a docker hub hosted Node image
FROM node:12-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

USER node

COPY --chown=node:node package*.json tsconfig.json jest.config.js docker-entrypoint.sh ./

RUN chmod +x docker-entrypoint.sh

RUN npm install -q

COPY --chown=node:node src ./src

EXPOSE 8080

ENTRYPOINT [ "/home/node/app/docker-entrypoint.sh" ]