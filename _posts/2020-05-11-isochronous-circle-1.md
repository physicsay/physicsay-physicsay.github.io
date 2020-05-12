---
title: 等时圆模型 (一) —— VPython 模拟
url: isochronous-circle-1
date: 2020-05-11 09:30:40
tags:
- 可视化
- VPython
categories:  mechanics  
description:  知道等时圆吗？本文介绍了什么是等时圆，还有些有意思的结论呢
---

## 1. 物理场景

在竖直平面内有一个圆，A 是圆的最高点，从 A 点延伸出了四条轨道，轨道上套有小球 (轨道光滑无摩擦)，轨道角度如图所示。将球从 A 点静止释放，以下说法正确的是 (    )

<img src='/assets/images/2020-05-11-isochronous-circle-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

A. $t_D > t_C > t_E > t_B$  
B. $t_B > t_E > t_C > t_D$  
C. $t_B = t_E = t_C = t_D$  
D. $t_B < t_E < t_C = t_D$  

## 2. VPython 模拟

上述例题中的模型称为等时圆模型，即一个竖直平面的圆上某点延伸出无数条轨道，只在重力作用下物体从静止开始下落，则在每条轨道上运动的时间相等。

我们使用 VPython 对等时圆模型进行模拟，假定圆的半径为 1m， 分别有四条轨道，与水平面的夹角为 45°，90°， 135°， 150°，来看下小球是否能同时到达轨道终点。

### 2.1 模型一
从同一点开始释放，沿着不同轨道下滑。

<img src='/assets/images/2020-05-11-isochronous-circle-1/motion1.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

在上图模拟中，可以看到从同一点开始释放，是同时到达轨道末端的，因此上题的答案选 C。

### 2.2 模型二

沿着不同轨道从静止释放，考查下小球是否同时到达圆环底端。

<img src='/assets/images/2020-05-11-isochronous-circle-1/motion2.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

---

既然是模拟，我们还可以改变小球的质量，考查小球沿着不同轨道下落的时间 (此处未做相关模拟)。

结论：小球在竖直平面内不同轨道从同一点无摩擦下滑，滑倒轨道末端的时间是相同的，与小球质量、轨道角度无关。

> 有同学可能会有疑问，在做题的时候无法编程，怎么能找到正确的选项？本文用 VPython 模拟这样的运动，先有一个直观的印象，关于等时圆的分析，请看下文。

