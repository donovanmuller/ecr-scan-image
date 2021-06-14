FROM node:12-alpine as builder

ENV https_proxy "http://proxy.ctonetwrkprod.aws.dsarena.com:3128"
ENV http_proxy "http://proxy.ctonetwrkprod.aws.dsarena.com:3128"

COPY package.json package-lock.json /
RUN npm install

COPY index.js /

CMD [ "node", "/index.js" ]
