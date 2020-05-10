---
title: 模拟带电粒子在磁场中运动区域 (二) —— 以 2017 年江苏高考压轴题为例
url: simulation-of-particle-motion-area-2
date: 2020-04-28 19:30:36
tags:
- VPython
- 可视化
- 物理题
- 磁场
categories: electromagnetism 
description: 用 VPython 模拟粒子在磁场中可能的运动区域 ——  以 2017 年江苏高考压轴题为例
---

## 0. 真题

**质谱仪的工作原理如图所示。大量的甲、乙两种离子飘入电压为 $U_0$ 的加速电场，其初速度几乎为 0，经过加速后，通过宽为 $L$ 的狭缝 $MN$ 沿着与磁场垂直的方向进入磁感应强度为 $B$ 的匀强磁场中，最后打到照相底片上。已知甲、乙两种离子的电荷量均为 $+q$，质量分别为 $2m$ 和 $m$，图中虚线为经过狭缝左、右边界 M、N 的甲种离子的运动轨迹。不考虑离子间的相互作用。**

**（1）求甲种离子打在底片上的位置到 N 点的最小距离 $x$；**

**（2）在答题卡的图中用斜线标出磁场中甲种离子经过的区域，并求该区域最窄处的宽度 $d$；**

**（3）若考虑加速电压有波动，在($U_0 - \Delta U$) 到 ($U_0 + \Delta U$) 之间变化，要使甲、乙两种离子在底片上没有重叠，求狭缝宽度 L 满足的条件。**

<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-2/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 1. 解析

本文使用 VPython 进行模拟粒子的运动过程。

### 1.1 第一问

甲粒子在磁场中的运动半径为 $r_1$，在电场加速过程中有：

$$
qU_0 = \frac{1}{2} (2m) v^2
$$

在磁场中的匀速圆周运动：  

$$
qvB = (2m) \frac{v^2}{r_1}
$$

可以求解出

$$
r_1 = \frac{2}{B}\sqrt{\frac{mU_0}{q}}
$$

求解甲粒子打在底片上位置到 N 点的最小距离，应该是从 M 点射出，此时落点距离 N 点最近，为 $x = 2r_1 - L$，解得  

$$
x = \frac{4}{B}\sqrt{\frac{mU_0}{q}} - L
$$

### 1.2 第二问

最窄处位于过两虚线焦点的垂线上(即两圆弧顶点连线的中垂线)

<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-2/geo.png' style='zoom:40%; margin: 0 auto; display: block;'/>

如图所示，最窄距离为

$$
d = r_1 - \sqrt{r_1^2 - (\frac{L}{2})^2}
$$

解得  

$$
d = \frac{2}{B}\sqrt{\frac{mU_0}{q}} - \sqrt{\frac{4mU_0}{qB^2}- \frac{L^2}{4}}
$$

### 1.3 第三问

乙粒子在磁场中的运动半径为 $r_2$，甲粒子从 M 点入射的最小运动半径轨迹和 乙粒子从N 点入射的最大轨迹不重合即可，有：

$$
2r_{1min} - 2r_{2max} > L
$$

甲粒子最小半径为

$$
r_{1min} = \frac{2}{B}\sqrt{\frac{m(U_0 - \Delta U)}{q}}
$$

乙粒子最大半径为

$$
r_{2max} = \frac{1}{B}\sqrt{\frac{2m(U_0 + \Delta U)}{q}}
$$

因此可得：

$$
L < \frac{2}{B}\sqrt{\frac{m}{q}}(2\sqrt{U_0 - \Delta U} - \sqrt{2(U_0 + \Delta U)})
$$

## 2. 模拟

需要对模型一些参数进行设定：设甲粒子的荷质比为 $5 × 10^7 C/kg$， 乙粒子的荷质比为 $10^8 C/kg$，加速电压为 $10^5 V$，狭缝 MN 的宽为 $2cm$。


### 2.1 模拟同一粒子轨迹区域
以甲粒子为例，绘制从狭缝不同位置垂直射出后，粒子的运动轨迹，如下图所示：
<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-2/single.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

### 2.2 模拟不同粒子的运动轨迹  

加上乙粒子的运动轨迹，如下图所示 (绿色轨迹为乙粒子)。
<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-2/diff_p.gif' style='zoom:40%; margin: 0 auto; display: block;'/>
(此处有动图，加载较慢，请耐心等待)

<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-2/diff_p.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 2.3 模拟不同电压下粒子的轨迹
以甲粒子为例，电压从 $0.9 × 10^5 V$ 至 $1.1 × 10^5 V$ 变化，考察粒子的运动轨迹。
<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-2/diff_u.gif' style='zoom:40%; margin: 0 auto; display: block;'/>
(此处有动图，加载较慢，请耐心等待)

<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-2/diff_u.png' style='zoom:40%; margin: 0 auto; display: block;'/>

从上图可以看到，随着电压增加，落点区域向右移动。如果要使得甲乙粒子在不同电压下不重合，应该是甲粒子从 M 点入射的最小运动半径轨迹（对应电压为 $U_0 - \Delta U$）和 乙粒子从 N 点入射的最大轨迹（对应电压为 $U_0 + \Delta U$）不重合即可。





