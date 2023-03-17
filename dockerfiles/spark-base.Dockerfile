FROM ubuntu:latest

RUN apt update
RUN apt install wget -y

RUN wget https://dlcdn.apache.org/spark/spark-3.3.2/spark-3.3.2-bin-hadoop3.tgz
RUN tar -xvf ./spark-3.3.2-bin-hadoop3.tgz
RUN rm ./spark-3.3.2-bin-hadoop3.tgz
RUN mv ./spark-3.3.2-bin-hadoop3/ /opt/spark/

RUN apt install openjdk-19-jre -y

RUN apt install pip -y
RUN pip3 install py4j numpy

ENV JAVA_HOME="/usr/lib/jvm/java-19-openjdk-amd64/"
ENV PATH="$JAVA_HOME/bin:$PATH"

ENV SPARK_HOME="/opt/spark"
ENV PATH="$PATH:$SPARK_HOME"

ENV PYTHONPATH="$SPARK_HOME/python:$PYTHONPATH"
ENV PYSPARK_PYTHON="/usr/bin/python3"


COPY ./scripts/start-as.sh /opt/spark/sbin/

WORKDIR /opt/spark/sbin