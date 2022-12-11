FROM node

RUN mkdir -p /usr/src/app
COPY app.js /usr/src/app

RUN cd /usr/src/app && npm i express
WORKDIR /usr/src/app

EXPOSE 3000
ENTRYPOINT ["node", "app.js"]
