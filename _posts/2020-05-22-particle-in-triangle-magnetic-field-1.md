---
title:  带电粒子在三角区域磁场中的运动
url: particle-in-triangle-magnetic-field-1
date: 2020-05-22 07:08:07
tags:
- 可视化
- 磁场
- 物理题
categories:  electromagnetism
description: 来考察下带电粒子在三角磁场中的运动吧
---

## 0. 模拟题

我们来看以下的题：

**(多选) 如图所示，以直角三角形 AOC 为边界的有界匀强磁场区域，磁感应强度为 B，$\angle A ＝ 60°$，AO ＝ L，在 O 点放置一个粒子源，可以向各个方向发射某种带负电粒子(不计重力作用)，粒子的比荷为 $\frac{q}{m}$，发射速度大小都为 $v_0$，且满足 $v_0 = \frac{qBL}{m}。粒子发射方向与 OC 边的夹角为 $\theta$ ,对于粒子进入磁场后的运动，下列说法正确的是(    )**

**A. 当 $\theta = 45°$ 时，粒子将从 AC 边射出**     
**B. 所有从 OA 边射出的粒子在磁场中运动时间相等**    
**C. 随着 $\theta$ 角的增大，粒子在磁场中运动的时间先变大后变小**    
**D. 在 AC 边界上只有一半区域有粒子射出**    

<img src='/assets/images/2020-05-22-particle-in-triangle-magnetic-field/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 1. 解析

根据洛伦兹力提供向心力，有 $qvB = m\frac{v^2}{R}$，得带电粒子在磁场中的偏转半径为 $R = \frac{mv}{qB} = L$

由于 $\theta$ 是从 0 到 90° 变化，先考察 $\theta = 0°$ 到情况。

<img src='/assets/images/2020-05-22-particle-in-triangle-magnetic-field/sitution1.png' style='zoom:40%; margin: 0 auto; display: block;'/>

此时带电粒子最多只能入射到 AC 的一半位置，D 对。

在考察带电粒子刚好从 A 点出射的情况。

由于粒子运动半径为 R ，因此可以绘制特征等边三角形 AOO'。

<img src='/assets/images/2020-05-22-particle-in-triangle-magnetic-field/sitution2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

可以发现当 $\theta$ 为 60° 时，粒子从 A 点出射，当 $\theta < 60°$ 时，粒子从 AC 边射出， A 对。

关于带电粒子中在磁场中的运动时间，可以通过粒子在磁场中运动的轨迹长度判断，即弧长。

随着 $\theta$ 角的增大，粒子在磁场中运动的时间逐渐变小，BC 错误。

答案选 AD。

---

用 VPython 来模拟下粒子在磁场中的运动，如下所示：

<img src='/assets/images/2020-05-22-particle-in-triangle-magnetic-field/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>


