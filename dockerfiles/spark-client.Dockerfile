FROM spark_base

RUN apt install pip -y
RUN pip3 install matplotlib jupyterlab

ENV PYSPARK_DRIVER_PYTHON="jupyter"
ENV PYSPARK_DRIVER_PYTHON_OPTS="lab"

WORKDIR /home
CMD jupyter-lab --allow-root --ip=0.0.0.0 --port=8000
