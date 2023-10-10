FROM node:18-alpine

# RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /usr/src/app
ENV HOST=0.0.0.0
COPY package*.json ./
# USER node
RUN npm install
COPY . .
# COPY --chown=node:node . .
EXPOSE 1234
CMD [ "npm", "start" ]