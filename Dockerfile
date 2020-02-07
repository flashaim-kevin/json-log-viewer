FROM node:12.15

WORKDIR /logs

COPY .json-log-viewer /root/.json-log.viewer

RUN npm install --global json-log-viewer

# ENTRYPOINT [ "jv" ]
CMD jv /logs/log.20200206