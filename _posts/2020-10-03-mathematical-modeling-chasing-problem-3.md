---
title:  建模教程 - 猎犬追狐狸 (三)
url: mathematical-modeling-chasing-problem-3
date: 2020-10-03 08:30:38
tags:
- Mathematical Modeling
- 模拟
- 数学建模
categories: Modeling
description:  猎犬追狐狸问题中，如果猎犬对狐狸逃逸的方向有预判，将自己的运动方向偏移某个角度，情况又是如何呢？
---

## 0. 建模题

一只狐狸以不变的速度 $v_1$ 沿直线 AB 奔逃，一只猎犬以不变的速率 $v_2$ 追击，其运动方向始终对准狐狸。某时刻狐狸在 F 处，猎犬在 D 处开始追击， $FD \perp AB$， 已知 $FD = L$，如图所示。

1. 若猎犬在追击时提前做了预判——运动方向对准狐狸，并有轻微的角度偏转，那追击情况又是如何？

<img src='/assets/images/2020-10-03-mathematical-modeling-chasing-problem-3/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 本题选自《中学奥林匹克竞赛物理教程-力学篇》中 2-17 题，对题目问题略有改编。

## 1. 模型分析

由于猎犬追击狐狸是有预判的，可以理解为猎犬的运动方向与两者连线有 $\alpha$ 角度的偏转。在程序中要如何实现呢？

首先找到某时刻狐狸和猎犬的位置坐标，写出两点间的坐标矢量，再求出单位矢量，该单位矢量是两者连线的方向。由于猎犬在追击过程中有 $\alpha$ 角度的预判，因此需要将单位矢量顺时针旋转 $\alpha$ 角度后得到猎犬的追击方向。

同时，如果猎犬追击狐狸的时间长短与预判角度有关。当预判角度超过某个数值，则追击时间会延长（例如猎犬运动角度偏转 60°，可能不太利于缩短追击时间）

用 VPython 程序模拟该预判过程（程序略）。假定初始时刻猎犬与狐狸的间距为 $10 m$，猎犬的速度为 $8 m/s$，狐狸的速度为 $4 m/s$，当两者间距小于 $0.01 m$ 时，则默认为追上。时间间隔设置为 $0.0001 s$。

下表为猎犬不同预判角度下追到狐狸的时间。


|偏转角度(°)|追击时间 (s)|
|:--:|:--:|
|0|1.664|
|5|1.598|
|10|1.543|
|15|1.500|
|20|1.468|
|25|1.449|
|30|1.442|
|35|1.450|
|40|1.475|
|45|1.521|
|50|1.599|
|55|1.715|
|60|1.888|

<img src='/assets/images/2020-10-03-mathematical-modeling-chasing-problem-3/curve.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 可以发现在指定的参数下，30° 偏转能是的追击时间最短。

下面给出不同的偏转角度下的运动图像：

<img src='/assets/images/2020-10-03-mathematical-modeling-chasing-problem-3/10.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

<img src='/assets/images/2020-10-03-mathematical-modeling-chasing-problem-3/30.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

<img src='/assets/images/2020-10-03-mathematical-modeling-chasing-problem-3/60.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

> 上图分别是 10°、30°、60° 的猎犬狐狸运动图像。

值得注意的是，当偏转角度为 30° 时，猎犬的运动轨迹是一条直线；而当偏转角度为 60° 时，猎犬需要“兜一圈”才能追到狐狸。


## 3. 思考  
在猎犬的速度为 $8 m/s$，狐狸的速度为 $4 m/s$，为什么猎犬的偏转角度为 30° 时，运动轨迹为一条直线？

---
参考  
1. [VPython 教程 - 猎犬追狐狸 (一)](https://mp.weixin.qq.com/s/xXJmeayVNiGRnTNh0POiig)
2. [VPython 教程 - 猎犬追狐狸 (二)](https://mp.weixin.qq.com/s/7ogIvz-6iyuOMqlo-T5btA)
3. [建模教程 - 猎犬追狐狸 (一)](https://mp.weixin.qq.com/s/ply-8g2e9G91ZabFb9oFAg)
4. [建模教程 - 猎犬追狐狸 (二)](https://mp.weixin.qq.com/s/0SLWp8K3SnrztYK2ILc8UQ)

