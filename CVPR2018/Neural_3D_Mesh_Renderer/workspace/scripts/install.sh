#!/bin/bash

WORKSPACE=/root/workspace

cd ${WORKSPACE}/neural_renderer; \
python setup.py install; \
cd -

cd ${WORKSPACE}/mesh_reconstruction; \
python setup.py install; \
cd -

cd ${WORKSPACE}/style_transfer_3d; \
python setup.py install; \
cd -

cd ${WORKSPACE}/deep_dream_3d: \
python setup.py install; \
cd -

