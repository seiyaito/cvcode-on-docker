FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04
MAINTAINER Natsuki Hase <hase.natsuki@vss.it.aoyama.ac.jp>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  build-essential bash-completion wget git && \
  rm -rf /var/lib/apt/lists/*

# Python setting
ENV PYTHON_VERSION=3
ENV ANACONDA_VERSION=5.2.0
ENV ANACONDA_ROOT=/usr/local/anaconda
RUN cd /tmp && \
	wget https://repo.continuum.io/archive/Anaconda${PYTHON_VERSION}-${ANACONDA_VERSION}-Linux-x86_64.sh && \
	chmod +x Anaconda${PYTHON_VERSION}-${ANACONDA_VERSION}-Linux-x86_64.sh && \
        ./Anaconda${PYTHON_VERSION}-${ANACONDA_VERSION}-Linux-x86_64.sh -b -p ${ANACONDA_ROOT} && \
	rm -rf *

RUN ${ANACONDA_ROOT}/bin/pip install -U \
	numpy==1.14.1 scipy==1.0.0 matplotlib==2.1.2 tensorflow==1.4.1 tensorflow-gpu==1.4.1 \
	Pillow==5.0.0 pypng==0.0.18 scikit_learn==0.19.1 opencv-python==3.2.0.6
ENV PATH=$ANACONDA_ROOT/bin:$PATH

# for opencv-python
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  libsm-dev libxrender-dev && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /root/workspace
