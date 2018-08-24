FROM nvidia/cuda:9.0-cudnn7-devel
MAINTAINER Seiya Ito <ito.seiya@vss.it.aoyama.ac.jp>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  build-essential bash-completion wget git vim && \
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

RUN ${ANACONDA_ROOT}/bin/conda install pytorch -c pytorch 
RUN ${ANACONDA_ROOT}/bin/conda install google-sparsehash -c bioconda  
RUN ${ANACONDA_ROOT}/bin/conda install -c anaconda pillow  
ENV PATH=$ANACONDA_ROOT/bin:$PATH

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  unrar && \
  rm -rf /var/lib/apt/lists/*
