FROM node:latest
COPY ./web_dynamic/app ./app
WORKDIR ./app 
RUN chmod +x app.js
