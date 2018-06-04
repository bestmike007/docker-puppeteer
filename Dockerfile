FROM node:8.11.2-slim
MAINTAINER Yuanhai He <i@bestmike007.com>

RUN curl -sSL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y google-chrome-stable \
      --no-install-recommends \
    && apt-get clean -yq

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
