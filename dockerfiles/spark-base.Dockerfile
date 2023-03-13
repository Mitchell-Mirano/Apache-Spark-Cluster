FROM ubuntu:latest

RUN apt update
RUN apt install wget -y

RUN wget https://dlcdn.apache.org/spark/spark-3.3.2/spark-3.3.2-bin-hadoop3.tgz
RUN tar -xvf ./spark-3.3.2-bin-hadoop3.tgz
RUN rm ./spark-3.3.2-bin-hadoop3.tgz
RUN mv ./spark-3.3.2-bin-hadoop3/ /opt/spark/

RUN apt install openjdk-19-jre -y

COPY ./scripts/start-as.sh /opt/spark/sbin/

WORKDIR /opt/spark/sbin