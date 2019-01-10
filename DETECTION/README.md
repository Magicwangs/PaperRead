# DETECTION

###  **First Of All**
- **mean Average precision(mAP) mAP定义及相关概念mAP:** 
    - **mean Average Precision**, 即各类别AP的平均值
    - **AP**: PR曲线下面积，后文会详细讲解
    - **PR曲线**: Precision-Recall曲线
        - **Precision**: TP / (TP + FP)
        - **Recall**: TP / (TP + FN)
    - **TP**: IoU>{0,0.1,...,1}的检测框数量（同一Ground Truth只计算一次）
    - **FP**: IoU<={0,0.1,...,1}的检测框，或者是检测到同一个GT的多余检测框的数量
    - **FN**: 没有检测到的GT的数量   

- 在计算AP的过程中, 
    - 首先需要有一个IoU阈值, 来判断这个框**是不是可以输出的框**    
    - 然后 **再根据输出的框 和GT的IoU** 来计算 AP     


* `wrt`: with respect to 的缩写, 相对于
* `R-CNN` `Object Detection` [Faster R-CNN: Towards Real-Time Object Detection with Region Proposal Networks](Faster_R_CNN.md)
* `R-CNN` `Object Detection` [Cascade R-CNN: Delving into High Quality Object Detection](Cascade_R_CNN.md)  
* `BackBone`[DetNet: A Backbone network for Object Detection](DetNet.md)