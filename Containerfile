FROM ubuntu:24.04
#MAINTAINER onsdagens pawel.dzialo@ltu.se

WORKDIR /usr/app
COPY ./digitaljs_online/ /usr/app
RUN apt -y update
RUN apt -y install nodejs npm yosys
RUN npm install webkit
RUN npm run prepare
EXPOSE 3000
CMD ["npm", "run", "dev"]
