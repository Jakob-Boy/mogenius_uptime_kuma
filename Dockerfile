FROM node:stretch-slim

WORKDIR /root

RUN apt update && apt install git -y && npm install npm -g && git clone https://github.com/louislam/uptime-kuma.git

WORKDIR /root/uptime-kuma

RUN npm run setup

EXPOSE 3001

CMD ["node", "server/server.js"]
