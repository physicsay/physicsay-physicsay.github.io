---
title: 带电粒子在磁场边界的碰撞问题 (二) —— 以 2019 年江苏物理高考压轴题为例
url: collision-in-rectangle-magnetic-field
date: 2020-05-25 19:07:22
tags:
- 可视化
- 磁场
- 物理题
categories:  electromagnetism
description: 以 2019 年江苏物理高考压轴题为例，考查粒子在磁场边界的碰撞问题。
---

## 0. 真题

我们来看下 2019 年江苏物理压轴题，是关于粒子在磁场边界的碰撞问题。

**如图所示，匀强磁场的磁感应强度大小为B，磁场中的水平绝缘薄板与磁场的左、右边界分别垂直相交于M、N，MN = L，粒子打到板上时会被反弹（碰撞时间极短），反弹前后水平分速度不变，竖直分速度大小不变、方向相反。质量为m、电荷量为 $-q$ 的粒子速度一定，可以从左边界的不同位置水平射入磁场，在磁场中做圆周运动的半径为 $d$，且 $d < L$，粒子重力不计，电荷量保持不变。**

**(1) 求粒子运动速度的大小 $v$；**  

**(2) 欲使粒子从磁场右边界射出，求入射点到 M 的最大距离 $d_m$；**  

**(3) 从 P 点射入的粒子最终从 Q 点射出磁场，$PM = d$，$QN = \frac{d}{2}$，求粒子从 P 到 Q 的运动时间 $t$。** 

<img src='/assets/images/2020-05-25-collision-in-rectangle-magnetic-field/fig.png' style='zoom:60%; margin: 0 auto; display: block;'/>


## 1. 解析

### 1.1 第一问

由于题目中，已经给定带电粒子在磁场中做圆周运动的半径为 $d$，不计重力，洛伦兹力提供向心力，有

$$
qvB = m\frac{v^2}{d}
$$

因此速度为 $v = \frac{qBd}{m}$


### 1.2 第二问

可以考虑以下几种情况：

A. 当入射点距 MN 板的距离过大时，粒子会打到左边界，并从左侧飞出，不与 MN 碰撞；

B. 当入射点距 MN 板的距离略近时，粒子会打到 MN 板并反射，速度方向斜向左 (指向第三象限)，粒子反射后，会与左边界相碰，并从左边界射出；

C. 再将入射点距 MN 板的距离靠近，粒子反射后会与左边界相切，但不射出；

D. 当入射点距 MN 板的距离刚好为粒子运动半径时，粒子会垂直打到 MN 板，碰撞后有一个向上的速度；

E. 当入射点距 MN 板距离小于粒子运动半径，粒子打到 MN 板的速度方向斜向右 (指向第四象限)

以上的5种情况，如下图所示。

<img src='/assets/images/2020-05-25-collision-in-rectangle-magnetic-field/situation.png' style='zoom:60%; margin: 0 auto; display: block;'/>

> 上图仅给出与左边界或 MN 板碰撞的情况。

要使得粒子能到达右边界，粒子与 MN 反射后应该刚好与左边界相切。找到特征三角形，如下图所示

<img src='/assets/images/2020-05-25-collision-in-rectangle-magnetic-field/q2.png' style='zoom:60%; margin: 0 auto; display: block;'/>

有几何关系可得，最大的距离 $d_m = d + \frac{\sqrt{3}}{2} d$


### 1.3 第三问

题目中已给定粒子从 P 点射入，从 Q 点射出， $PM = d$， $QN = \frac{d}{2}$。

粒子从 Q 点射出，分成两种情况，一种是粒子在 MN 反射后上升的过程中碰到 Q 点，另一种是在靠近 MN 板时碰到 Q 点。

<img src='/assets/images/2020-05-25-collision-in-rectangle-magnetic-field/q3.png' style='zoom:60%; margin: 0 auto; display: block;'/>

**1**

考虑粒子从 A 点向上射出右边界

在磁场中运动的时间可以写成如下形式：

$$
t = n\cdot \frac{T}{4} + t', (n = 1, 3, 5)
$$

从A 点向上射出右边界的时间 $t' = \frac{1}{12} T$

而 MN 的长度可以表达为：

$$
L = nd + (1 - \frac{\sqrt{3}}{2}d
$$

<img src='/assets/images/2020-05-25-collision-in-rectangle-magnetic-field/q3-1.png' style='zoom:60%; margin: 0 auto; display: block;'/>


综上，可以解出时间 $t$

$$
t = (\frac{L}{d} + \frac{3\sqrt{3} - 4}{6})\frac{\pi m}{2qB}
$$


**2**

考虑粒子从 A 点向下射出右边界

在磁场中运动的时间可以写成如下形式：

$$
t = n\cdot \frac{T}{4} + t', (n = 1, 3, 5)
$$

通过几何关系得，从A 点向下射出右边界的时间 $t' = \frac{5}{12} T$

而 MN 的长度 $L$ 可以表达为：

$$
L = nd + (1 + \frac{\sqrt{3}}{2}d
$$

<img src='/assets/images/2020-05-25-collision-in-rectangle-magnetic-field/q3-2.png' style='zoom:60%; margin: 0 auto; display: block;'/>

综上，可以解出时间 $t$

$$
t = (\frac{L}{d} - \frac{3\sqrt{3} - 4}{6})\frac{\pi m}{2qB}
$$

---

我们用 VPython 来模拟这样的碰撞过程：

考虑带电粒子到右边界向上出射的情况，这里模拟 $n = 3$ 的情况，如下所示。

<img src='/assets/images/2020-05-25-collision-in-rectangle-magnetic-field/q3-1.gif' style='zoom:60%; margin: 0 auto; display: block;'/>

考虑带电粒子到右边界向上出射的情况，这里模拟 $n = 3$ 的情况，如下所示。


<img src='/assets/images/2020-05-25-collision-in-rectangle-magnetic-field/q3-2.gif' style='zoom:60%; margin: 0 auto; display: block;'/>




---
关于带电粒子在磁场边界的碰撞问题，有以下文章：

1. [带电粒子在磁场边界的碰撞问题 (一) —— 以 2017 届徐州连云港宿迁高三三模压轴题为例](http://physicsay.com/electromagnetism/collision-in-magnetic-field-1/)

