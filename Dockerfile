FROM node:18-alpine

# RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /usr/src/app
COPY package*.json ./
# USER node
RUN npm install
COPY bin/* ./bin
# COPY --chown=node:node . .
EXPOSE 1234
CMD [ "npm", "start" ]