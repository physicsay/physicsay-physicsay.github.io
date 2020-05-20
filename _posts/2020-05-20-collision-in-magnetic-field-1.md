---
title:  带电粒子在磁场边界的碰撞问题 (一) —— 以 2017 届徐州连云港宿迁高三三模压轴题为例
url: collision-in-magnetic-field-1
date: 2020-05-20 16:21:04
tags:
- 可视化
- 磁场
- 物理题
categories:  electromagnetism
description: 以 2017 届徐州连云港宿迁高三三模压轴题为例，考查粒子在磁场边界的碰撞问题。
---

## 0. 模拟题

我们来看下 2017 届徐州连云港宿迁高三三模压轴题，是关于粒子在磁场边界的碰撞问题。

**一圆筒的横截面如图所示，圆心为 O、半径为 R，在筒上有两个小孔 M、N 且 M、O、N 在同一水平线上。圆筒所在区域有垂直于圆筒截面的匀强磁场，磁感应强度大小为 B，在圆筒左侧有一个加速电场．一个质量为 $m$、电荷量为 $q$ 的带正电粒子，由静止经电场加速后从 M 孔沿 MO 方向射入圆筒。已知粒子与圆筒碰撞时电荷量保持不变，碰撞后速度大小不变，方向与碰撞前相反，不计粒子重力。**

**(1) 若加速电压为 $U_0$，要使粒子沿直线 MN 运动，需在圆筒内部空间加一匀强电场，求所加电场的电场强度大小 $E$；**    
**(2) 若带电粒子与圆筒碰撞三次后从小孔 N 处射出，求粒子在圆筒中运动时间 $t$; **  
**(3) 若带电粒子与圆筒碰撞后不越过小孔 M，而是直接从小孔 M 处射出，求带电粒子射入圆筒时的速度 $v$ .**  

<img src='/assets/images/2020-05-20-collision-in-magnetic-field-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 1. 解析  
### 1.1 第一问  

粒子在加速电场中运动时，有动能定理：

$$
qU_0 = \frac{1}{2}mv_0^2
$$

在磁场运动时，洛伦兹力向上，粒子沿着直线 MN 运动，则粒子受到的洛伦兹力和电场力平衡，有 $qvB = qE$，可解得

$$
E = B\sqrt{\frac{2qU_0}{m}}
$$

电场方向向下。

### 1.2 第二问

带电粒子在磁场中的运动周期为 $T = \frac{2\pi m}{qB}$

带电粒子磁场边界碰撞三次，共有两种情况：

**1.** 偏转较大的情况

如下图所示，相邻两次碰撞点与圆心连线夹角为 $\alpha = \frac{\pi}{4}$

<img src='/assets/images/2020-05-20-collision-in-magnetic-field-1/situation1.png' style='zoom:40%; margin: 0 auto; display: block;'/>

对应粒子偏转圆心角为 $\beta = \pi - \frac{\pi}{4} = \frac{3\pi}{4}$

整个运动周期的时间为：

$$
t = 4 × \frac{\beta}{2\pi} T = \frac{3\pi m}{qB}
$$

用 VPython 模拟粒子的运动状态，如下所示：

<img src='/assets/images/2020-05-20-collision-in-magnetic-field-1/situation1.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

**2.** 偏转较小的情况

相邻两次碰撞点与圆心连线夹角为 $\alpha = \frac{3\pi}{4}$，即对应粒子偏转圆心角为 $\beta' = \pi - \frac{3\pi}{4} = \frac{\pi}{4}$

<img src='/assets/images/2020-05-20-collision-in-magnetic-field-1/situation2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

整个运动周期的时间为：

$$
t = 4 × \frac{\beta'}{2\pi} T = \frac{\pi m}{qB}
$$

用 VPython 模拟粒子的运动状态，如下所示：

<img src='/assets/images/2020-05-20-collision-in-magnetic-field-1/situation2.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

### 1.3 第三问

粒子从 M 点射入磁场的速度为 $v$，半径为 $r$，则有 $qvB = m\frac{v^2}{R}$。设粒子与磁场边界碰撞次数为 $n$，来考察粒子的运动，判断能否从 M 点原路出射。

<img src='/assets/images/2020-05-20-collision-in-magnetic-field-1/situation3.png' style='zoom:40%; margin: 0 auto; display: block;'/>

上图给出了不同的碰撞次数粒子的运动轨迹，值得注意的是，在 $n = 3$ 和 $n = 5$ 时，粒子是从 N 点出射(此处为直观显示，将碰撞轨迹全部绘制)

即当碰撞次数为偶数时，粒子才能从 M 点出射。

考虑 $n = 2$ 的出射情况

<img src='/assets/images/2020-05-20-collision-in-magnetic-field-1/situation3_analysis.png' style='zoom:40%; margin: 0 auto; display: block;'/>

此时圆被等份成 3 份，圆心角为 $\frac{2\pi}{3} = 120°$，而在 $\triangle MOO_2$ 中，$\theta = \frac{1}{2} × 120° = 60°$，利用三角函数有

$$
tan(\frac{\pi}{3}) = \frac{MO_2}{MO} = \frac{r}{R}
$$

可以得到 

$$
r = R \cdot tan(\frac{\pi}{3})
$$

归纳可得，当 $n$ 为偶数时，有 

$$
r = R \cdot tan(\frac{\pi}{n+1})
$$

再结合 $r = \frac{mv}{qB}$，可得

$$
v = \frac{qBR}{m} \cdot tan(\frac{\pi}{n+1}), (n = 2, 4, 6,...)
$$






