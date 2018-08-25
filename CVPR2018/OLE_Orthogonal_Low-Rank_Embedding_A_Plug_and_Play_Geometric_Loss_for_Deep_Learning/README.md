# OLÉ: Orthogonal Low-Rank Embedding - A Plug and Play Geometric Loss for Deep Learning
J. Lezama, Q. Qiu, P. Musé, and G. Sapiro, "OLÉ: Orthogonal Low-Rank Embedding - A Plug and Play Geometric Loss for Deep Learning", CVPR, 2018.

[[Paper (CVPR)](http://openaccess.thecvf.com/content_cvpr_2018/papers/Lezama_OLE_Orthogonal_Low-Rank_CVPR_2018_paper.pdf)]
[[Code](https://github.com/jlezama/OrthogonalLowrankEmbedding)]


## Quick Start

```
# working directory <CVPR2018/OLE_Orthogonal_Low-Rank_Embedding_A_Plug_and_Play_Geometric_Loss_for_Deep_Learning>
git submodule update --init workspace/OrthogonalLowrankEmbedding

# run docker
docker-compose up -d --build

# enter container
docker exec -it orthogonallowrankembedding bash

# move to project root </root/workspace/OrthogonalLowrankEmbedding>
cd OrthogonalLowrankEmbedding
```

From here, please follow the instructions of the original repository.

  - [BASIC INSTRUCTIONS](https://github.com/jlezama/OrthogonalLowrankEmbedding/tree/master/stl10#basic-instructions)


I could run the following code by minor change from original.
```
python train.py --lambda_ 0 --batchsize 1
```


## Citation

```
# http://openaccess.thecvf.com/CVPR2018.py 
@InProceedings{Lezama_2018_CVPR,
    author    = {Lezama, José and Qiu, Qiang and Musé, Pablo and Sapiro, Guillermo},
    title     = {OLÉ: Orthogonal Low-Rank Embedding - A Plug and Play Geometric Loss for Deep Learning},
    booktitle = {The IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
    month     = {June},
    year      = {2018}
}
```

---

### for Japanese
[cvpaper.challenge](https://cvpaperchallenge.github.io/CVPR2018_Survey/#/ID_OLE_Orthogonal_Low-Rank_Embedding_A_Plug_and_Play_Geometric_Loss_for_Deep_Learning)

