FROM nvidia/cuda:8.0-cudnn6-devel 
MAINTAINER Seiya Ito <ito.seiya@vss.it.aoyama.ac.jp>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  build-essential bash-completion wget git && \
  rm -rf /var/lib/apt/lists/*

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  python2.7 python-numpy python-scipy python-pip && \
  rm -rf /var/lib/apt/lists/*

RUN pip install -U tensorflow-gpu==1.4.0

WORKDIR /root/workspace
