---
title:  等时圆模型 (二) —— 分析和题目
url: isochronous-circle-2
date: 2020-05-12 21:25:21
tags:
- 物理题
categories:  mechanics  
description:  等时圆是如何分析的呢？以及哪些题可以用到这个知识秒解题呢
---

之前的文章，讲解了等时圆模型，即一个竖直平面的圆上某点延伸出无数条轨道，只在重力作用下物体从静止开始下落，则在每条轨道上运动的时间相等，并对这个模型用 VPython 做了模拟，有些同学可能会疑惑，考试时无法写程序模拟，也不会写程序，那要怎么办呢？

用 VPython 模拟，是给大家一个直观的感受，运动还是要基于分析的。下面就对等时圆模型分析，并讲解等时圆相关的题目，看看如何秒解题？

## 1. 分析

选取任意角度的杆，分析小球在杆上受到的力：

<img src='/assets/images/2020-05-12-isochronous-circle-2/freebody.png' style='zoom:40%; margin: 0 auto; display: block;'/>

小球受到竖直向下的重力，杆对小球的支持力，如上图所示。重力可以分解成沿着杆和垂直于杆，垂直于杆的支持力和重力分力不改变物体速度大小。因此可以列出以下方程，求出在杆上运动的加速度

$$
mgsin\theta = ma
$$

而杆的长度为 $L = 2R sin\theta$

因此用 $x = 1/2 \cdot at^2$ 公式有：

$$
2R sin\theta = \frac{1}{2} \cdot (gsin\theta) \cdot t^2
$$

得到球沿着杆下落的时间为 

$$
t = 2\sqrt{\frac{R}{g}}
$$


**结论：小球在竖直平面内不同轨道从同一点无摩擦下滑，滑到轨道末端的时间是相同的，只与半径 $R$ 和重力加速度 $g$ 有关，与小球质量、轨道角度无关。**


## 2. 物理题

既然已经知道了等时圆的特点，可以来试试能不能运动到题目和实际中呢？

### 2.1 例一

在同一竖直平面内固定三根光滑的细杆，细杆的一个端点均在 d 点，另一端点 a、b、c处于同一水平线上，三环分别从a、b、c处由静止释放，$t_1$、$t_2$、$t_3$ 分别表示各环到达 d 点的时间，正确的是 (    )

A. $t_1 = t_2 = t_3$  
B. $t_1 < t_2 < t_3$  
C. $t_1 > t_2 > t_3$  
D. 无法比较  

<img src='/assets/images/2020-05-12-isochronous-circle-2/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 2.2 分析

环由 a、b、c 点静止释放，只受到重力，可以用等时圆模型来求解，画出对应的等时圆，再考虑等时圆的半径即可。

<img src='/assets/images/2020-05-12-isochronous-circle-2/fig_a.png' style='zoom:40%; margin: 0 auto; display: block;'/>

从上图可以看出，环从 a 点下落的时间和 a' 点下落的时间相同 (等时圆模型结论)，因此可以画出 b、c 杆的等时圆。 
<img src='/assets/images/2020-05-12-isochronous-circle-2/fig_abc.png' style='zoom:40%; margin: 0 auto; display: block;'/>

因此答案选 B。

### 2.3 变题

身体素质拓展训练中，人从竖直墙壁的顶点 A 沿光滑杆自由下滑到倾斜的木板上 (人可看作质点)，若木板的倾斜角不同，人沿着三条不同路径 AB、AC、AD 滑到木板上的时间分别为 $t_1$、$t_2$、$t_3$，若已知 AB、AC、AD 与板的夹角分别为 70°、90° 和 105°，则 (    )

A. $t_1 > t_2 > t_3$   
B. $t_1 < t_2 < t_3$    
C. $t_1 = t_2 = t_3$  
D. 不能确定$t_1$、$t_2$、$t_3$ 之间的关系  

<img src='/assets/images/2020-05-12-isochronous-circle-2/fig2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 知道变题的答案吗？试试看！

注： 
1. [例题1](https://www.bilibili.com/video/BV19J411s77W)  
2. [变题](https://zhuanlan.zhihu.com/p/99465319)




