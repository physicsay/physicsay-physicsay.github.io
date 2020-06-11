---
title:  带电粒子在复合场中的运动 (一) —— 以 2019 年南京盐城高三二模压轴题为例
url: particle-in-comprehensive-field-1
date: 2020-06-02 13:59:41
tags:
- 可视化
- 磁场
- 物理题
categories:  comprehension
description:  来研究下粒子在复合场中的运动情况？以 2019 年南京盐城高三二模压轴题为例。
---

## 0. 模拟题

我们来看下 2019 届南京、盐城高三二模压轴题，是关于复合场的问题。复合场问题是指电场、磁场和重力场存在其二或全部存在的问题，在高中的学习中也相对困难。

某控制带电粒子运动的仪器原理如图所示，区域 $PP'M'M$ 内有竖直向下的匀强电场，电场强度 $E = 1.0 × 10^3 V/m$，宽度 $d = 0.05 m$，长度 $L = 0.40 m$；区域 $MM'N'N$ 内有垂直纸面向里的匀强磁场，磁感应强度 $B = 2.5 × 10^{-2}T$，宽度 $D = 0.50 m$，比荷 $q/m = 1.0 × 10^8 C/kg$ 的带正电的粒子以水平初速度 $v_0$ 从 $P$ 点射入电场。边界 $MM'$ 不影响粒子的运动，不计粒子重力。

<img src='/assets/images/2020-06-02-particle-in-comprehensive-field-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

(1) 若 $v_0 = 8.0 × 10^5 m/s$， 求粒子从区域 $PP'N'N$ 射出的位置。  
(2) 若粒子第一次进入磁场后就从 $M'N'$ 间的垂直边界射出，求 $v_0$ 的大小。  
(3) 若粒子从 $M'$ 点射出，求 $v_0$ 满足的条件。 

## 1. 解析
### 1.1 第一问

粒子以水平初速度从 $P$ 点射入电场后，在电场中做类平抛运动。在竖直方向有 

$$
d = \frac{1}{2} at^2 = \frac{1}{2} \frac{Eq}{m} t^2
$$

代入数据，可以解得粒子在竖直方向上移动的时间 $t = \sqrt{\frac{2md}{qE}} = 1.0 × 10^{-6} s$，再计算下粒子运动的水平位移 $x = v_0 t = 0.80 m$。粒子竖直方向移动的距离为 $d$ 时，水平移动的距离超过电场区域 $L$。

因此，当粒子在水平方向移动的距离为 $L$ 时，粒子在竖直方向上移动的距离小于 $d$，粒子会从 $P'M'$ 出射。 

粒子在水平方向移动距离为 $L$ 时，运动时间为 $t_0 = L / v_0 = 5.0 × 10^{-7} s$，此时竖直方向运动的距离为

$$
y = \frac{1}{2} at^2 = \frac{1}{2} \frac{Eq}{m} t_0^2 = 0.0125 m
$$

$y < d$，因此粒子从 $P'$ 点下方 $0.0125 m$ 处射出。


### 1.2 第二问

粒子在电场区域内做类平抛运动，到达磁场后，只在洛伦兹力的作用下做匀速圆周运动，粒子轨迹如下图所示：

<img src='/assets/images/2020-06-02-particle-in-comprehensive-field-1/analysis.png' style='zoom:40%; margin: 0 auto; display: block;'/>

由于题目给定粒子从 $M'N'$ 间的垂直边界射出，因此可以知道圆周运动的圆心在 $M'N'$ 上，结合粒子刚进入磁场的速度方向，找到圆心 $O$ 点。

粒子在竖直方向做匀加速运动，可以求得运动时间 $t = \frac{2md}{qE}$

> 由于粒子从 $MM'$ 进入磁场，因此在竖直方向可移动的距离是 $d$，时间是 $t = \sqrt{\frac{2md}{qE}}$

可以求出粒子经过 $MM'$ 的竖直速度：

$$
v_y = \frac{qE}{m} t = \frac{qE}{m} \cdot \sqrt{\frac{2md}{qE}} = \sqrt{\frac{2qEd}{m}}
$$

水平方向速度仍然为 $v_0$，假定进入磁场的速度为 $v$

$$
v\cdot sin\alpha = v_y
$$

结合粒子从 $M'N'$ 边界射出，粒子在水平方向移动的距离为 $L$，则可以列出以下方程：

$$
v_0 \cdot  t + R\cdot sin\alpha = L
$$

有粒子在磁场中的洛伦兹力提供向心力，可以写出粒子在磁场中运动半径：$R = \frac{mv}{qB}$，代入上式则有

$$
v_0 \cdot t + \frac{mv}{qB}\cdot sin\alpha = L
$$

> 上式中有 $v\cdot sin\alpha = v_y$ 

可以解得粒子的初始速度为 $v_0 = L\cdot \frac{qE}{2md} - \frac{E}{B}  = 3.6 × 10^5 m/s$

### 1.3 第三问

**1.** 我们先来考虑下粒子在磁场最下边界能否射出？

我们来计算下粒子在磁场中能运动的最远垂直距离 $\Delta y$ (参考上图)

$$
\Delta y = R(1- cos \alpha)
$$

将 $R = \frac{mv}{qB}$、$v = \frac{v_y}{sin \alpha}$、$v_y = \sqrt{\frac{2qEd}{m}}$ 三个式子代入上式，可以解得 $\Delta y$

$$
\Delta y = \frac{1}{B}\sqrt{\frac{2mEd}{q}}\cdot tan(\frac{\alpha}{2})
$$

由于 $\alpha$ 是粒子在电场与磁场边界中 竖直方向和水平方向的夹角。这个夹角应小于 90°(不能达到 90°)。代入上式求得 $\Delta y$ 的最大值。

$$
\Delta y = \frac{1}{B}\sqrt{\frac{2mEd}{q}} = 0.04 m
$$

小于磁场宽度 D，因此不管粒子速度是多少，粒子都不会从磁场边界 $NN'$ 射出。

**2.** 再来看下粒子在磁场中运动的对称性

假定粒子刚进入磁场时，与水平方向的夹角为 $\alpha$，再在磁场中作圆周运动，运动圆心角为 $2 \alpha$， 射出磁场的速度与水平速度的角度仍为 $\alpha$，之后再在电场中运动时，粒子在水平方向继续作匀速直线运动，竖直方向作匀减速运动，因此粒子运动具有对称性。如下图所示：

<img src='/assets/images/2020-06-02-particle-in-comprehensive-field-1/sysm.png' style='zoom:40%; margin: 0 auto; display: block;'/>

**3.** 粒子到达 M 的两种情况：

**(1) 粒子从 M 点向上出射**

考虑 M 点向上出射，由于对称性，假定粒子从电场进入磁场，再从磁场进入电场，速度仍为 $v_0$时，为一个周期 $l$。M 点要向上出射，需要满足长度等于 $nl + \frac{3}{4}l$，如下图所示。

<img src='/assets/images/2020-06-02-particle-in-comprehensive-field-1/up.png' style='zoom:40%; margin: 0 auto; display: block;'/>

写出电场长度 $L$ 和周期 $l$ 的关系式，有

$$
L = n(2v_0t + 2Rsin\alpha) + v_0t + 2Rsin\alpha
$$

将 $R = \frac{mv}{qB}$、$v = \frac{v_y}{sin \alpha}$、$v_y = \sqrt{\frac{2qEd}{m}}$ 三个式子代入上式，可以解得 $v_0$

$$
v_0 = \frac{L}{2n+1} \cdot \sqrt{\frac{qE}{2md}} - \frac{2n+2}{2n+1} \cdot \frac{E}{B}
$$

能解得 $v_0$ 为

$$
v_0 = (\frac{3.2 - 0.8n}{2n + 1}) × 10^5 m/s
$$

> 注意上式得满足 $v_0 \geqslant 0$， $n = 0, 1, 2, 3$ 

---

用 VPython 模拟这样的结果：

<img src='/assets/images/2020-06-02-particle-in-comprehensive-field-1/up.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

**(2) 粒子从 M 点向下出射**

考虑 M 点向下出射，由于对称性，假定粒子从电场进入磁场，再从磁场进入电场，速度仍为 $v_0$时，为一个周期 $l$。M 点要向下出射，需要满足长度等于 $nl + \frac{1}{4}l$，如下图所示。

<img src='/assets/images/2020-06-02-particle-in-comprehensive-field-1/down.png' style='zoom:40%; margin: 0 auto; display: block;'/>

写出电场长度 $L$ 和周期 $l$ 的关系式，有

$$
L = n(2v_0t + 2Rsin\alpha) + v_0t
$$

将 $R = \frac{mv}{qB}$、$v = \frac{v_y}{sin \alpha}$、$v_y = \sqrt{\frac{2qEd}{m}}$ 三个式子代入上式，可以解得 $v_0$

$$
v_0 = \frac{L}{2n+1} \cdot \sqrt{\frac{qE}{2md}} - \frac{2nE}{(2n+1)B}
$$

能解得 $v_0$ 为

$$
v_0 = (\frac{4.0 - 0.8n}{2n + 1}) × 10^5 m/s
$$

> 注意上式得满足 $v_0 \geqslant 0$， $n = 0, 1, 2, 3, 4$ 

---

用 VPython 模拟这样的结果：

<img src='/assets/images/2020-06-02-particle-in-comprehensive-field-1/down.gif' style='zoom:40%; margin: 0 auto; display: block;'/>









