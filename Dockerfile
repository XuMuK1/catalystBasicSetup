FROM ubuntu:18.04

MAINTAINER MaxKaledin <xumuk.unity.dev@gmail.com>

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip \
  && python3 -m pip install --upgrade pip setuptools wheel

COPY ./requirements.txt /requirements.txt
WORKDIR /


RUN pip3 install -r requirements.txt 

RUN pip3 install torch==1.4.0+cpu torchvision==0.5.0+cpu -f https://download.pytorch.org/whl/torch_stable.html
RUN python3 --version
RUN pip3 install catalyst

#for some reasons....I suppose it can be deprecated
#COPY . /

EXPOSE 8888


ENTRYPOINT ["/bin/bash"]



