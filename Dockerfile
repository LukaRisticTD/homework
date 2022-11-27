FROM node:16
WORKDIR /homework
COPY . .
RUN npm install
RUN apt-get update
RUN npm install -g nodemon 
EXPOSE 3000
CMD [ "nodemon" ] 