## 我知道的关于BN的一切
- **Authors**: Magic
- **Tags**: `BatchNorm` 
- **Year**: Alive


## Summary
- WHAT
- HOW
- DETAIL

- [need read](https://tkv.io/posts/fusing-batchnorm-and-conv/)



bn的主要作用是控制数值区间，让比较深的网络训练起来稳定性比较好，更不容易爆炸。但是初始化和调参其实可以部分解决这个问题，能不用bn的时候还是尽量不要用，尤其是做一个新的问题的时候，不要想当然就把bn塞进去。
