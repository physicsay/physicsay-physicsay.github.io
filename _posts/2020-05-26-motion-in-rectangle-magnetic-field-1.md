---
title: 带电粒子在磁场中的运动 —— 以 2018 年江苏物理高考压轴题为例
url: motion-in-rectangle-magnetic-field-1
date: 2020-05-26 14:52:03
tags:
- 可视化
- 磁场
- 物理题
categories:  electromagnetism
description: 以 2018 年江苏物理高考压轴题为例，研究带电粒子在不同磁场中的运动。
---


## 0. 真题

我们来看下 2018 年江苏物理压轴题，是关于带电粒子在不同磁场中的运动。

如图所示，真空中四个相同的矩形匀强磁场区域，高为 $4d$，宽为 $d$，中间两个磁场区域间隔为 $2d$，中轴线与磁场区域两侧相交于 $O$、$O'$点，各区域磁感应强度大小相等。某粒子质量为 $m$、电荷量为 $+q$，从 $O$ 沿轴线射入磁场。当入射速度为 $v_0$ 时，粒子从 $O$ 上方 $\frac{d}{2}$ 处射出磁场。取 $sin53° = 0.8$，$cos53° = 0.6$。

<img src='/assets/images/2020-05-26-motion-in-rectangle-magnetic-field-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

（1）求磁感应强度大小 $B$；

（2）入射速度为 $5v_0$ 时，求粒子从 $O$ 运动到 $O'$ 的时间 $t$；

（3）入射速度仍为 $5v_0$，通过沿轴线 $OO'$ 平移中间两个磁场 (磁场不重叠)，可使粒子从 $O$ 运动到 $O'$ 的时间增加 $\Delta  t$，求 $\Delta t$ 的最大值。

## 1. 解析

### 1.1 第一问

根据题意，**当入射速度为 $v_0$ 时，粒子从 $O$ 上方 $\frac{d}{2}$ 处射出磁场**，因此可以判断粒子在第一个磁场中做半个圆周运动，运动半径为 $\frac{d}{4}$，根据洛伦兹力提供向心力，可以写出 $r  = \frac{mv}{qB}$，解得磁感应强度大小为 $B = \frac{4mv_0}{qd}$。


### 1.2 第二问

由于题目中给定的速度为 $5v_0$，可以计算出粒子运动的轨道半径为 $r' = \frac{5}{4}d$，画出带电粒子在第一、二磁场中的运动轨迹，如下图所示：

<img src='/assets/images/2020-05-26-motion-in-rectangle-magnetic-field-1/analysis.png' style='zoom:40%; margin: 0 auto; display: block;'/>

在特征三角形 $\triangle CBD$ 中，可以解出粒子偏转的角度为 $\alpha = 53°$

根据对称性可知，粒子在第二个磁场中出射的速度水平向右，大小保持不变。同理，入射到第三、四磁场时，也能找到特征三角形，最后会在 $x$ 轴出射。

带电粒子在一个矩形磁场中运动的时间为 
$$
t_1 = \frac{53°}{360°}\cdot \frac{2\pi m}{qB}
$$

解得时间 $t_1 = \frac{53 \pi d}{720 v_0}$

而直线运动的时间为 $t_2 = \frac{2d}{5v_0}$

综上，可以解得粒子在磁场中的运动时间为 

$$
t = 4t_1 + t_2 = (\frac{53\pi + 72}{180})\frac{d}{v_0}
$$ 

---

我们用 VPython 模拟带电粒子的运动轨迹：

<img src='/assets/images/2020-05-26-motion-in-rectangle-magnetic-field-1/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

> 可以发现粒子的运动是对称的。

### 1.3 第三问

题目中将第二、三磁场移动，会导致带电粒子的运动轨迹会向上移动。

<img src='/assets/images/2020-05-26-motion-in-rectangle-magnetic-field-1/q3.png' style='zoom:40%; margin: 0 auto; display: block;'/>

下面列举不同移动距离的运动轨迹。

<img src='/assets/images/2020-05-26-motion-in-rectangle-magnetic-field-1/situation.png' style='zoom:40%; margin: 0 auto; display: block;'/>

可以看到随着 $\Delta x$ 的增加，带电粒子的运动轨迹向上移动，需要计算出临界情况。首先考虑带电粒子在一个磁场中的偏转，根据几何关系可得粒子在 $y$ 方向上移动的距离为 $y_1 = r\cdot(1-cos\alpha)$。

考虑在两个磁场的 $y$ 方向移动距离 和 在第一、二磁场的间距 $\Delta x$ 对应 $y$ 方向移动距离，有：

$$
y = r\cdot(1-cos\alpha) + \Delta x\cdot tan\alpha
$$ 

满足 $y \leqslant  2d$，解得 $\Delta x \leqslant 0.75 d$。当 $\Delta x = 0.75d $ 时，$\Delta t$ 有最大值。

粒子直线运动路程为

$$
s = \frac{2\Delta x}{cos \alpha} + (2d - 2\Delta x)
$$

代入，可得直线运动的最大路程为 $3d$，因此增加路程为 $3d - 2d = d$，增加的时间为 $\Delta = \frac{\Delta x}{5v_0} = \frac{d}{5v_0}$



