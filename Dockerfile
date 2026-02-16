FROM tsl0922/ttyd:latest

RUN apt update -y && apt upgrade -y

RUN apt install man-db -y

RUN apt install wget -y

RUN apt install nano -y

WORKDIR /opt

COPY ./mongo.sh ./mongo.sh

RUN chmod 111 mongo.sh

RUN ln /opt/mongo.sh /usr/local/bin/mongo

RUN wget https://downloads.mongodb.com/compass/mongosh-2.7.0-linux-x64.tgz 

RUN tar -zxvf mongosh-2.7.0-linux-x64.tgz

RUN ln /opt/mongosh-2.7.0-linux-x64/bin/mongosh /usr/local/bin/mongosh

RUN rm mongosh-2.7.0-linux-x64.tgz

WORKDIR /