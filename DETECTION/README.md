# DETECTION

## First Of All
- **mean Average precision(mAP) mAP定义及相关概念mAP:** 
    - **mean Average Precision**, 即各类别AP的平均值
    - **AP**: PR曲线下面积，后文会详细讲解
    - **PR曲线**: Precision-Recall曲线
        - **Precision**: TP / (TP + FP)
        - **Recall**: TP / (TP + FN)
    - **TP**: IoU>{0,0.1,...,1}的检测框数量（同一Ground Truth只计算一次）
    - **FP**: IoU<={0,0.1,...,1}的检测框，或者是检测到同一个GT的多余检测框的数量
    - **FN**: 没有检测到的GT的数量   

* `R-CNN` `Object Detection` [Cascade R-CNN: Delving into High Quality Object Detection](Cascade_R_CNN.md)  
* 