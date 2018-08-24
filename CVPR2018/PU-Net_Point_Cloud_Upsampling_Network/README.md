# PU-Net: Point Cloud Upsampling Network
L. Yu, X. Li, C-W. Fu, D. Cohen-Or, and P-A. Heng, "PU-Net: Point Cloud Upsampling Network", CVPR, 2018.

[[Paper (CVPR)](http://openaccess.thecvf.com/content_cvpr_2018/papers/Yu_PU-Net_Point_Cloud_CVPR_2018_paper.pdf)]
[[Supplemental](http://openaccess.thecvf.com/content_cvpr_2018/Supplemental/1248-supp.pdf)]
[[Paper (arXiv)](https://arxiv.org/abs/1801.06761)]
[[Code](https://github.com/yulequan/PU-Net)]


## Quick Start

```
# working directory <CVPR2018/PU-Net_Point_Cloud_Upsampling_Network>
git submodule update --init workspace/PU-Net

# run docker
docker-compose up -d --build

# enter container
docker exec -it PU-Net bash

# download data
cd scripts && sh download.sh

# compile library and evaluation code
sh compile.sh

# move to project root </root/workspace/PU-Net>
cd ../PU-Net
```

From here, please follow the instructions of the original repository, but no need to download data and compile the code.

  - [Usage](https://github.com/yulequan/PU-Net#usage)

  - [Evaluation code](https://github.com/yulequan/PU-Net#evaluation-code)


## Citation
```
# http://openaccess.thecvf.com/CVPR2018.py
@InProceedings{Yu_2018_CVPR,
    author    = {Yu, Lequan and Li, Xianzhi and Fu, Chi-Wing and Cohen-Or, Daniel and Heng, Pheng-Ann},
    title     = {PU-Net: Point Cloud Upsampling Network},
    booktitle = {The IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
    month     = {June},
    year      = {2018}
}
```

---

### for Japanese
[cvpaper.challenge](https://cvpaperchallenge.github.io/CVPR2018_Survey/#/ID_PU-Net_Point_Cloud_Upsampling_Network)

