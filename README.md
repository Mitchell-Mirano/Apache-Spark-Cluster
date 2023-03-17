# Apache-Spark-Cluster
A cluster of Apache Spark implemented with docker and docker-compose.


## Install

### Previous requirements
- Docker and Docker-compose installed.
- Minimun 4GB of memory available.

### Clone this repository.
```bash
git clone https://github.com/Mitchell-Mirano/Apache-Spark-Cluster.git
```
### Change the directory
```bash
cd Apache-Spark-Cluster
```
Now review the project files and directories

- The data directory contains the data for the Spark cluster and all containers share this directory. Review the docker-compose file.

- The notebooks directory is the workspace  and contains the jupyter notebooks for work with the Spark cluster.

- The spark-client container for default serve a jupyterlab notebook
in the 8000 port. If you prefer work with this notebook, you can add the notebooks directory to the docker-compose file in the spark-client service. Else you can use the remote connections for jupyter-notebooks in Vs Code or other IDE.


### Build the Spark images using the following command.
```bash
./scripts/build.sh
```
- This script builds 3 docker images **spark-base** and **spark** and **spark-client**
### Excute your cluster with the following command

```bash
docker-compose up 
```
### Connect to the Cluster
- In the logs of spark-client service you can see the url of the connection of notebook. You can open this URL in your browser or use this url for make a remote connection. For
example:

```bash
 http://127.0.0.1:8000/lab?token=ea952d2ec7583c0b...
 ```

- Remember for work in your browser is recommended, mount the notebooks directory in your spark-client service. Because
for default is unmounted.




