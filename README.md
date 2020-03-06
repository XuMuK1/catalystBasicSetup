# Catalyst Basic Docker Image

A docker image to start working with catalyst RL library.

# Usage

There are two ways to use it.

## (1)Build the Image

Build the image by executing 

```bash
sudo docker image build -t rljlabcatbase:1.0
```

Then run it

```bash
sudo docker container run -it --publish 8888:8888 --name rldock rljlabcatbase:1.0 
```
Do not forget to use -rm flag or execute
```bash
sudo docker container rm --force rldock
```
in order to close the container.

## (2)Download from the DockerHub

Just execute
```bash
sudo docker image pull xumukdocker/rljlabcatbase:1.0
```
or its equivalent from the docker console.
