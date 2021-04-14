FROM node:14.15.0
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
RUN npm run build
EXPOSE 3000
ENTRYPOINT [ "node", "./server/server.js" ]