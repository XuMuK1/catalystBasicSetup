# Catalyst Basic Docker Image

A docker image to start working with catalyst RL library.

# Usage

There are two ways to deploy it.

One way is to build the image by executing 

```bash
sudo docker image build -t rljlabcatbase:1.0
```
On the other hand, the built image is available via DockerHub:
```bash
sudo docker image pull xumukdocker/rljlabcatbase:1.0
```
IMPORTANT: If you build the image from Dockerfile and not use the pulled one then use the name rljlabcatbase:1.0 (without xumukdocker/).
## Running

You can run the container with 

```bash
sudo docker container run -it --publish 8888:8888 --name rldock xumukdocker/rljlabcatbase:1.0 
```
Do not forget to use -rm flag or execute
```bash
sudo docker container rm --force rldock
```
in order to close the container. When the container starts, you are in Bash command line and able to execute any Linux command to manipulate the container. There is installed jupyter lab, to start the server run 

```bash
jupyter lab --ip 0.0.0.0 --no-browser --allow-root
```
and then JupyterLab is accessible on https://ipaddress:8888 where ipaddress is 127.0.0.1 if you use linux and ip of docker-machine if you use Windows with virtual machine. The ip of Dcoker machine can be found with
```bash
docker-machine ip
```