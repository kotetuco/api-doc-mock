# setting base image
FROM node:4.6.0

# author
MAINTAINER kotetuco

# copy files
COPY package.json /root/

WORKDIR /root

# install modules
RUN npm install

# expose ports
EXPOSE 8080
EXPOSE 30001

# 
RUN set -x && \
    mkdir apidocs && \
    mkdir published

COPY gulpfile.js /root/

COPY apidocs /root/apidocs/

# check install
RUN set -x && \
    ls -la && \
    cat /root/package.json

CMD ["npm", "start"]
