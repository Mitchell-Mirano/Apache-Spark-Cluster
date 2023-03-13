FROM spark_base

RUN apt install pip -y
RUN pip3 install matplotlib jupyterlab py4j

ENV JAVA_HOME="/usr/lib/jvm/java-19-openjdk-amd64/"
ENV PATH="$JAVA_HOME/bin:$PATH"
ENV SPARK_HOME="/opt/spark"
ENV PATH="$PATH:$SPARK_HOME"
ENV PYTHONPATH="$SPARK_HOME/python:$PYTHONPATH"
ENV PYSPARK_PYTHON=python3
ENV PYSPARK_DRIVER_PYTHON="jupyter"
ENV PYSPARK_DRIVER_PYTHON_OPTS="lab"

WORKDIR /home
CMD jupyter-lab --allow-root --ip=0.0.0.0 --port=8000
