# 3D Semantic Segmentation With Submanifold Sparse Convolutional Networks
B. Graham, M. Engelcke, and L. van der Maaten, "Deep Image Prior", CVPR, 2018.

[[Paper (CVPR)](http://openaccess.thecvf.com/content_cvpr_2018/papers/Graham_3D_Semantic_Segmentation_CVPR_2018_paper.pdf)]
[[Paper (arXiv)](https://arxiv.org/abs/1711.10275)]
[[Code](https://github.com/facebookresearch/SparseConvNet)]


## Quick Start

```
# working directory <CVPR2018/3D_Semantic_Segmentation_with_Submanifold_Sparse_Convolutional_Networks> 
git submodule update --init workspace/SparseConvNet

# run docker
docker-compose up -d --build

# enter container
docker exec -it sparseconvnet bash

# move to project root </root/workspace/SparseConvNet>
cd SparseConvNet
```

From here, please follow the instructions of the original repository.

  - [Hello World](https://github.com/facebookresearch/SparseConvNet#hello-world)

  - [Examples](https://github.com/facebookresearch/SparseConvNet#examples)


## Citation

```
# https://github.com/facebookresearch/SparseConvNet
@article{SubmanifoldSparseConvNet,
    title     = {Submanifold Sparse Convolutional Networks},
    author    = {Graham, Benjamin and van der Maaten, Laurens},
    journal   = {arXiv preprint arXiv:1706.01307},
    year      = {2017}
}

# http://openaccess.thecvf.com/CVPR2018.py
@InProceedings{Graham_2018_CVPR,
    author    = {Graham, Benjamin and Engelcke, Martin and van der Maaten, Laurens},
    title     = {3D Semantic Segmentation With Submanifold Sparse Convolutional Networks},
    booktitle = {The IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
    month     = {June},
    year      = {2018}
}
```

---

### for Japanese
[cvpaper.challenge](https://cvpaperchallenge.github.io/CVPR2018_Survey/#/ID_3D_Semantic_Segmentation_with_Submanifold_Sparse_Convolutional_Networks)
