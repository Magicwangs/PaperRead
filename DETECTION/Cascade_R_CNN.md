## Cascade R-CNN: Delving into High Quality Object Detection
- **Authors**: Zhaowei Cai, Nuno Vasconcelos
- **Link**: https://arxiv.org/abs/1712.00726
- **Tags**: `R-CNN` `Object Detection`
- **Year**: 2017 
- **Official Code**: https://github.com/zhaoweicai/cascade-rcnn

### Motivation
<img src="IMAGE/8717KJlGcH.png" alt="drawing" width="500"/>

- 在目标检测时, 需要分类和回归, 通过IoU来判断样本是否是正样本, **IoU的选取对train 和 inference的影响都很大**:
    - 图a,b 表示的是如果IoU的阈值选择的过低, 就会出现 过多的 “close” false positives, 这部分样本和
    - 图c中横轴表示**proposal和GT的IoU**，纵轴的是经过**box reg后和GT的IoU**, 不同曲线表示不同IoU阈值训练出的detector  
        - 在0.55-0.6的范围内阈值为0.5的detector性能最好，在0.6-0.75阈值为0.6的detector性能最佳，而到了0.75之后就是阈值为0.7的detector了  
        - **只有proposal自身的阈值和训练器训练用的阈值较为接近的时候，训练器的性能才最好**,如果两个阈值相距比较远，就会出现mismatch的问题 
    - 图d中横轴表示 **是否认为Proposal是真框**, 纵轴表示 **根据输出的框计算的AP**   
        - 如果只是 单纯的提高 IoU的阈值, 会改变正负样本的数据分布, 会导致进一步的不平衡, 导致过拟合  


###  KeyWord
- a single detector can only be _optimal for a single quality level_.    
-  inference-time **mismatch** between the
IoUs for which the detector is optimal and those of the input hypotheses.  


### Detail



  
#### WHY


