FROM nvidia/cuda:8.0-cudnn6-devel 
MAINTAINER Seiya Ito <ito.seiya@vss.it.aoyama.ac.jp>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  build-essential bash-completion wget git && \
  rm -rf /var/lib/apt/lists/*

ENV PYTHON_VERSION=2
ENV ANACONDA_VERSION=5.2.0
ENV ANACONDA_ROOT=/usr/local/anaconda
RUN cd /tmp && \
	wget https://repo.continuum.io/archive/Anaconda${PYTHON_VERSION}-${ANACONDA_VERSION}-Linux-x86_64.sh && \
	chmod +x Anaconda${PYTHON_VERSION}-${ANACONDA_VERSION}-Linux-x86_64.sh && \
        ./Anaconda${PYTHON_VERSION}-${ANACONDA_VERSION}-Linux-x86_64.sh -b -p ${ANACONDA_ROOT} && \
	rm -rf *

RUN ${ANACONDA_ROOT}/bin/pip install -U torch==0.3.1 torchvision
ENV PATH=$ANACONDA_ROOT/bin:$PATH

WORKDIR /root/workspace

