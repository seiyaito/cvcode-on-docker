# Neural 3D Mesh Renderer
H. Kato, Y. Ushiku, and T. Harada, "Neural 3D Mesh Renderer", CVPR, 2018.

[[Paper (CVPR)](http://openaccess.thecvf.com/content_cvpr_2018/papers/Kato_Neural_3D_Mesh_CVPR_2018_paper.pdf)]
[[Supplemental](http://openaccess.thecvf.com/content_cvpr_2018/Supplemental/2792-supp.pdf)]
[[Paper (arXiv)](https://arxiv.org/abs/1711.07566)]
[[Code](https://github.com/hiroharu-kato/neural_renderer)]

This docker environment supports related repositories.

  - [Single-image 3D mesh reconstruction](https://github.com/hiroharu-kato/mesh_reconstruction)

  - [2D-to-3D style transfer](https://github.com/hiroharu-kato/style_transfer_3d)

  - [3D DeepDream](https://github.com/hiroharu-kato/deep_dream_3d)


## Quick Start

```
# working directory <CVPR2018/Neural_3D_Mesh_Renderer> 
git submodule update --init workspace/neural_renderer
git submodule update --init workspace/mesh_reconstruction
git submodule update --init workspace/style_transfer_3d
git submodule update --init workspace/deep_dream_3d

# run docker
docker-compose up -d --build

# enter container
docker exec -it neural_renderer bash

# download data
cd scripts && sh download.sh

# install packages
sh install.sh

# move to workspace </root/workspace>
cd ..
```

From here, please follow the instructions of repositories, but no need to download data and install packages.

  - [Running examples (neural_renderer)](https://github.com/hiroharu-kato/neural_renderer#running-examples)

  - [Reconstructing shapes (mesh_reconstruction)](https://github.com/hiroharu-kato/mesh_reconstruction#reconstructing-shapes)

  - [Example (style_transfer_3d)](https://github.com/hiroharu-kato/style_transfer_3d#example)

  - [Run example (deep_dream_3d)](https://github.com/hiroharu-kato/deep_dream_3d#run-example)


## Citation
```
# http://openaccess.thecvf.com/CVPR2018.py
@InProceedings{Kato_2018_CVPR,
    author    = {Kato, Hiroharu and Ushiku, Yoshitaka and Harada, Tatsuya},
    title     = {Neural 3D Mesh Renderer},
    booktitle = {The IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
    month     = {June},
    year      = {2018}
}
```

---

### for Japanese
[cvpaper.challenge](https://cvpaperchallenge.github.io/CVPR2018_Survey/#/ID_Neural_3D_Mesh_Renderer)

