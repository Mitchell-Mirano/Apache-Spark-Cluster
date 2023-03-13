#!/bin/bash
docker build -t spark_base . -f ./dockerfiles/spark-base.Dockerfile 
docker build -t spark . -f ./dockerfiles/spark.Dockerfile 
docker build -t spark_client . -f ./dockerfiles/spark-client.Dockerfile