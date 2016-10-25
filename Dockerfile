# setting base image
FROM node:4.6.0

MAINTAINER kotetuco

# add user
RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@3.9.6

ENV HOME=/home/app

# copy package.json (for npm) files
COPY package.json $HOME
RUN chown -R app:app $HOME/*

USER app
WORKDIR /home/app

# install modules
RUN npm install

# expose ports
EXPOSE 8080
EXPOSE 30001

USER root

RUN set -x && \
    mkdir apidocs && \
    mkdir published

COPY gulpfile.js $HOME
COPY apidocs $HOME/apidocs/
RUN chown -R app:app $HOME/*

USER app

# check install
RUN set -x && \
    ls -la && \
    cat package.json

CMD ["npm", "start"]
