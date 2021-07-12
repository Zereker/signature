FROM node:14.15.1-buster-slim

WORKDIR /apps/douyin
ADD get_signa.js douyin_signature.js douyin_signature2.js /apps/douyin/
EXPOSE 8000

RUN set -ex \
    && npm config set registry https://registry.npm.taobao.org/ \
    && npm -g config set user root \
    && npm install express@4.17.1 jsdom@16.6.0 canvas@2.7.0 --canvas_binary_host_mirror=https://npm.taobao.org/mirrors/node-canvas-prebuilt/

CMD ["node", "get_signa.js"]
