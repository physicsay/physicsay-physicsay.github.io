---
title: 粒子在不均匀磁场中运动 (二) —— 以 2020 年苏锡常镇四市高三一模选择题为例
url: motion-in-inhomogeneous-magnetic-field-2
date: 2020-05-10 15:38:02
tags:
- 可视化
- 磁场
categories:  electromagnetism
description:  2020 年苏锡常镇高三一模中出现了粒子在不均匀磁场中的运动，快来看下是如何分析的吧
---

## 0. 模拟题

我们来看下 2020 年江苏省苏、锡、常、镇四市高考物理一模试卷的选择题：

如下图，用强磁场将百万度高温的等离子体（等量的正离子和电子）约束在特定区域实现受控核聚变的装置叫托克马克。我国托克马克装置在世界上首次实现了稳定运行100秒的成绩。多个磁场才能实现磁约束，其中之一叫纵向场，右侧为其横截面的示意图，越靠管的右侧磁场越强。尽管等离子体在该截面上运动的曲率半径远小于管的截面半径，但如果只有纵向场，带电粒子还会逐步向管壁“漂移”，导致约束失败．不计粒子重力．下列说法正确的是 (    )

<img src='/assets/images/2020-05-10-motion-in-inhomogeneous-magnetic-field-2/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

A．正离子在纵向场中沿逆时针方向运动  
B．发生漂移是因为带电粒子的速度过大  
C．正离子向左侧漂移，电子向右侧漂移  
D．正离子向下侧漂移，电子向上侧漂移  

## 1. 解析

本题遇到的磁场不是均匀的——越靠管的右侧磁场越强，粒子在不均匀磁场中运动相对是很难理解和想象的。这里可以使用“微元 + 极限”的思想：假设将磁场分成左右两部分，左侧的磁场较小，右侧的磁场较大。

写出粒子在磁场中运动的半径公式：$R = mv / (qB)$，则粒子在左侧的运动半径大，右侧的运动半径小。再根据左手定则可知，正离子在纵向场中是沿逆时针方向运动的。下图绘制了正负离子的运动轨迹：

<img src='/assets/images/2020-05-10-motion-in-inhomogeneous-magnetic-field-2/motion.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 图中黑色轨迹为正离子，红色轨迹为电子的运动。

因此，A、D 选项正确。而 B 选项“发生漂移是因为带电粒子的速度过大” 这个是错误的，粒子发生漂移是因为磁场不均匀导致的。

## 2. 模拟

那正负粒子在磁场中的运动是怎么样的呢？我们可以写一个程序来模拟下粒子运动，借助 VPython 来试试。

使用质子来模拟，质子的质量为 $1.6 × 10^{-27} kg$，电荷为 $1.6 × 10^{-19} C$，速度为 $10^{7} m/s$，磁场截面满足 $B = 0.2 x + 0.3$，磁场截面中心为 O 点，半径为 1 m。

### 2.1 单粒子的运动模拟

<img src='/assets/images/2020-05-10-motion-in-inhomogeneous-magnetic-field-2/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

将质子更靠近右侧管壁，来模拟下运动轨迹，如下图所示：

<img src='/assets/images/2020-05-10-motion-in-inhomogeneous-magnetic-field-2/position.png' style='zoom:40%; margin: 0 auto; display: block;'/>

图中红色轨迹为粒子从 (0, 0.5) 出射，绿色轨迹为粒子在 (0.5, 0.5) 位置出射，速度保持不变。

可以看出，越靠近右侧管壁，磁感应强度越大，粒子运动的半径变小。

### 2.2 不同角度的模拟

使粒子从 (0, 0.5) 出射，改变出射角度，红色轨迹是沿着 x 轴负方向出射，绿色轨迹是沿着西北方向出射，速度保持不变。

<img src='/assets/images/2020-05-10-motion-in-inhomogeneous-magnetic-field-2/angle.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 2.3 不同速度出射的模拟

改变粒子的出射速度并绘制运动轨迹。下图，红色轨迹表示速度为 $10^{7} m/s$，绿色轨迹表示速度为  $2 × 10^{7} m/s$，蓝色轨迹表示速度为 $0.5 × 10^{7} m/s$。

<img src='/assets/images/2020-05-10-motion-in-inhomogeneous-magnetic-field-2/velocity.png' style='zoom:40%; margin: 0 auto; display: block;'/>

从上图可以发现：速度越大，粒子半径越大。

---

这样，就对粒子在不均匀磁场中运动有了一个直观的印象。在实际解题中，将磁场分成两个部分，比较不同磁场下粒子的运动半径，能排出错误选项。







