FROM node:latest
LABEL maintainer="Douglas Alves"
ENV NODE_ENV=development PORT=3000
COPY . /var/www
WORKDIR /var/www
RUN npm install 
ENTRYPOINT ["npm", "start"]
EXPOSE $PORT