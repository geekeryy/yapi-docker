FROM node:current-buster-slim

WORKDIR /app

VOLUME /app

COPY . .

ENTRYPOINT ["/bin/sh","-c","./run.sh"]
