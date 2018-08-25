FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04 
MAINTAINER Natsuki Hase <hase.natsuki@vss.it.aoyama.ac.jp>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  build-essential bash-completion wget git && \
  rm -rf /var/lib/apt/lists/*

# Python setting
ENV PYTHON_VERSION=2
ENV ANACONDA_VERSION=5.2.0
ENV ANACONDA_ROOT=/usr/local/anaconda
RUN cd /tmp && \
	wget https://repo.continuum.io/archive/Anaconda${PYTHON_VERSION}-${ANACONDA_VERSION}-Linux-x86_64.sh && \
	chmod +x Anaconda${PYTHON_VERSION}-${ANACONDA_VERSION}-Linux-x86_64.sh && \
        ./Anaconda${PYTHON_VERSION}-${ANACONDA_VERSION}-Linux-x86_64.sh -b -p ${ANACONDA_ROOT} && \
	rm -rf *

RUN ${ANACONDA_ROOT}/bin/pip install -U opencv-python
RUN ${ANACONDA_ROOT}/bin/conda install pytorch torchvision -c pytorch
ENV PATH=$ANACONDA_ROOT/bin:$PATH


# for opencv-python
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  libsm-dev libxrender-dev && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /root/workspace
