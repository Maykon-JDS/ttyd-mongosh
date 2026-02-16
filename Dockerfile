FROM tsl0922/ttyd:latest

RUN apt update -y && apt upgrade -y

RUN apt install man-db -y

RUN apt install wget -y

WORKDIR /opt

RUN wget https://downloads.mongodb.com/compass/mongosh-2.7.0-linux-x64.tgz 

RUN tar -zxvf mongosh-2.7.0-linux-x64.tgz

RUN ln /opt/mongosh-2.7.0-linux-x64/bin/mongosh /usr/local/bin/mongosh

RUN rm mongosh-2.7.0-linux-x64.tgz