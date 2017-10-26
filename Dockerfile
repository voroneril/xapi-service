FROM node:8@sha256:e45ce4ebd333bb9c4d606308406107aaf3cd472461e1813bc58afd0fc9cb1054
ENV NPM_CONFIG_LOGLEVEL warn
WORKDIR /usr/src/app

COPY package.json package.json
COPY yarn.lock yarn.lock
RUN yarn install --production
COPY dist dist

EXPOSE 80
CMD ["yarn", "start"]
