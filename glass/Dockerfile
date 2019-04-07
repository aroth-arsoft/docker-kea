
FROM node:8

ENV NODE_ENV=production

WORKDIR /home/node/app
RUN git clone https://github.com/isc-projects/kea-anterius.git /home/node/app
ADD anterius_config.json /home/node/app/config/
ADD always_remote.patch /home/node/app/
RUN patch -i /home/node/app/always_remote.patch

CMD ["/bin/sh", "-c", "npm install && npm start"]
