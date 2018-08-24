#!/bin/bash

CDIR=${PWD}

TF_PATH=$(python -c "import tensorflow as tf; print(tf.__path__[0])")
TF_INC=${TF_PATH}/include

PROJECT=/root/workspace/PU-Net
TF_OPS=${PROJECT}/code/tf_ops

CXX=/usr/bin/g++
NVCC=/usr/local/cuda-8.0/bin/nvcc

# interpolation
cd ${TF_OPS}/interpolation; \
${CXX} -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I${TF_INC} -I /usr/local/cuda-8.0/include -I${TF_INC}/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L${TF_PATH} -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0; \
cd -

# grouping
cd ${TF_OPS}/grouping; \
${NVCC} tf_grouping_g.cu -o tf_grouping_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC; \
${CXX} -std=c++11 tf_grouping.cpp tf_grouping_g.cu.o -o tf_grouping_so.so -shared -fPIC -I${TF_INC} -I /usr/local/cuda-8.0/include -I${TF_INC}/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64 -L${TF_PATH} -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0; \
cd -

# sampling
cd ${TF_OPS}/sampling; \
${NVCC} tf_sampling_g.cu -o tf_sampling_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC; \
${CXX} -std=c++11 tf_sampling.cpp tf_sampling_g.cu.o -o tf_sampling_so.so -shared -fPIC -I${TF_INC} -I /usr/local/cuda-8.0/include -I${TF_INC}/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L${TF_PATH} -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0; \
cd -

# emd
cd ${TF_OPS}/emd; \
${NVCC} tf_auctionmatch_g.cu -o tf_auctionmatch_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC -arch=sm_30; \
${CXX} -std=c++11 tf_auctionmatch.cpp tf_auctionmatch_g.cu.o -o tf_auctionmatch_so.so -shared -fPIC -I${TF_INC}  -I/usr/local/cuda-8.0/include -I${TF_INC}/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L${TF_PATH} -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0 ; \
cd -

# CD
cd ${TF_OPS}/CD; 
${CXX} -std=c++11 render_balls_so.cpp -o render_balls_so.so -shared -fPIC -O2 -D_GLIBCXX_USE_CXX11_ABI=0; \
${NVCC} -D_GLIBCXX_USE_CXX11_ABI=0 -std=c++11 -c -o tf_nndistance_g.cu.o tf_nndistance_g.cu -I${TF_INC} -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC -O2; \
${CXX} -std=c++11 tf_nndistance.cpp tf_nndistance_g.cu.o -o tf_nndistance_so.so -shared -fPIC -I${TF_INC} -lcudart -L /usr/local/cuda-8.0/lib64/ -I${TF_INC}/external/nsync/public -L${TF_PATH} -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0; \
cd -

# evaluation
cd ${PROJECT}/evaluation_code; \
cmake .; \
make -j4; \
cd -
