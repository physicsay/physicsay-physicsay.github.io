---
title: 通电圆环的磁场 Mathematica 模拟
url: magetic-field-of-ring-simulation
date: 2020-04-14 22:15:48
tags:
- 可视化
- 磁场
categories: electromagnetism
description: 让我们更直观地看到通电圆环的磁场变化吧。
---

遇到通电圆环，可以使用右手定则确定产生的磁场方向：用右手弯曲的四指代替圆环中电流的方向，伸直的大拇指沿着轴线的磁场方向。

<img src='/assets/images/2020-04-14-magetic-field-of-ring-simulation/right.png' style='zoom:40%; margin: 0 auto; display: block;'/>


## 0. 问题

我们现在来用程序模拟出圆环中磁场的分布。

假定空间中有一个圆环，内有通入 $I$ 的电流，可以计算出空间任一点的磁场。但求解的过程非常复杂，涉及到椭圆积分等内容，而模拟还是比较简单的路径，本文给出了二维平面圆环磁场的模拟。有兴趣的同学可以使用其他软件求解，或者是在二维的基础上，想想三维的应该是怎么样的（这是个很好的思维训练过程。）

此处省略长篇的推导过程，本文通过程序绘制了圆环中不同电流下，通过圆环磁场线变化情况，方便计算，本文对方程中的某些参数做了简化。

<img src='/assets/images/2020-04-14-magetic-field-of-ring-simulation/mag_field.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

> 从图中可以看到，随着圆环电流增加，磁场线也在不断增加，说明通过圆环轴线出磁感应强度也在增加。

## 1. 扩展

大学会学到一个 亥姆霍兹线圈 (Helmholtz coil)，是两个相同的线圈，彼此平行且共轴。

<img src='/assets/images/2020-04-14-magetic-field-of-ring-simulation/Helmholtz.png' style='zoom:100%; margin: 0 auto; display: block;'/>

通过计算可以发现，当线圈间距为线圈半径时，中间的磁场是均匀的。

**思考** 

再想想，通电螺线管是不是可以理解成是很多个通电圆环组成的？

