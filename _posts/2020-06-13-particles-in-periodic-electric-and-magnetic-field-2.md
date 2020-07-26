---
title: 带电粒子在交变电磁场中运动 (二) —— 以 2010 年江苏高考物理压轴题一二问为例 
url: 2020-06-13-particles-in-periodic-electric-and-magnetic-field-2
date: 2020-06-13 15:18:51
tags:
- 可视化
- 电场
- 物理题
categories:  comprehension
description:  来研究下带电粒子在交变电场中运动状态，以 2010 年江苏高考物理压轴题(一、二问)为例。
---


## 0. 真题

我们来看下江苏 2010 年高考物理压轴题(一、二问)：

制备纳米薄膜装置的工作电极可简化为真空中间距为 $d$ 的两平行极板，如图甲所示，加在极板 $A$、$B$ 间的电压 $U_{AB}$作周期性变化，其正向电压为 $U_0$，反向电压为 $-kU_0 (k > 1)$，电压变化的周期为 $2\tau$，如图乙所示。在 $\tau = 0$ 时，极板 $B$ 附近的一个电子，质量为 $m$、电荷量为 $e$，受电场作用由静止开始运动。若整个运动过程中，电子未碰到极板 $A$，且不考虑重力作用。

(1) 若 $k = \frac{5}{4} $，电子在 $0 − 2\tau$ 时间内不能到达极板 $A$，求 $d$ 应满足的条件；

(2) 若电子在 $0 − 200\tau$ 时间未碰到极板 $B$，求此运动过程中电子速度 $v$ 随时间 $t$ 变化的关系；

<img src='/assets/images/2020-06-13-particles-in-periodic-electric-and-magnetic-field-2/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 1. 解析

### 1.1 第一问

在正向电压 $U_0$ 的作用下，电子受到向上的电场力，从下极板 B 开始向上运动，不考虑重力作用下，电子在 $U_0$ 电压运动的加速度为 

$$
a_1 = \frac{qE_1}{m} = \frac{qU_0}{md}
$$

当电场反向作用时，电场方向向上，电子受到的电场力向下，此时电子会做减速运动，加速度为

$$
a_2 = \frac{qE_2}{m} = -\frac{kqU_0}{md}
$$

在 $0 - \tau$ 内，电子做加速运动，可以写出电子在 $\tau$ 时刻的末速度 $v_1$ 

$$
v_1 = a_1 \cdot \tau = \frac{qU}{md} \tau
$$

和运动的位移 $x_1$

$$
x_1 = \frac{1}{2}\frac{qU}{md} \tau^2
$$ 

在 $\tau - 2\tau$ 内，电子做初速度为 $v_1$，加速度为 $a_2$ 的减速运动，题目中要求电子不能到达极板 A，即电子运动的最远距离不能超过 $d$，即电子的速度为 0 时，运动的距离最远。

写出当电子速度减速为 0 时运动的距离：

$$
x_2 = \frac{0 - v_1^2}{2a_2} = \frac{1}{k}\frac{2qU_0}{md} \tau^2
$$

满足 $x_1 + x_2 < d$ 即可，将 $k = \frac{5}{4}$ 和电荷量 $q = e$ 代入，可以解出 $d$ 满足的条件

$$
d > \sqrt{\frac{9eU_0\tau^2}{10m}}
$$

---

**注意：**

1. 这里电子不到达极板 A，是指整个过程中的最大位移应满足小于极板间距 $d$，而不是电子在 $0 - 2\tau$ 的总位移 (因为在 $\tau - 2\tau$ 时刻内，粒子先减速到零，后反向加速运动。)；

2. 这里可以使用 $v-t$ 图求解粒子的最大位移 (找到最大位移)，如下图阴影部分所示。

<img src='/assets/images/2020-06-13-particles-in-periodic-electric-and-magnetic-field-2/vt.png' style='zoom:40%; margin: 0 auto; display: block;'/>


### 1.2 第二问

粒子在 $0-200 \tau$ 时间内未碰到极板 B，考虑电子速度 $v$ 随着时间 $t$ 的变化关系，由于电场在发生交替变化，因此粒子的速度也会有所变化，这里可以写出几个周期内电子速度关系，再寻找规律。列出不同的时间间隔内粒子速度：

+ $t$ 在 $0 - \tau$ 内，$v = 0 + a_1 t$;
+ $t$ 在 $\tau - 2\tau$ 内， $v = (a_1 \tau) + a_2(t-\tau)$;
+ $t$ 在 $2\tau - 3\tau$ 内， $v = (a_1 + a_2)\tau + a_1(t - 2\tau)$;
+ $t$ 在 $3\tau - 4\tau$ 内， $v = (a_1 + a_2 + a_1)\tau + a_2(t - 3\tau)$;
+ $t$ 在 $4\tau - 5\tau$ 内， $v = (a_1 + a_2 + a_1 + a_2)\tau + a_1(t - 4\tau)$;
+ $t$ 在 $5\tau - 6\tau$ 内， $v = (a_1 + a_2 + a_1 + a_2 + a_1)\tau + a_2(t - 5\tau)$;
+ ...

> 上面的式子均按照 $v_f = v_i + a \cdot t$

可以借鉴数学归纳法，根据 1、3、5 式，发现，当 $t$ 处于 $2n\tau - (2n+1)\tau$时，$n = 0, 1, 2,...$, 有

$$
v = n(a_1 + a_2) \tau + a_1(t - 2n\tau)
$$

同理，根据 2、4、6 式，发现，当 $t$ 处于 $(2n+1)\tau - (2n+2)\tau$ 时，有

$$
v = n(a_1 + a_2) \tau  + a_1 \tau + a_2(t - (2n+1)\tau)
$$

将第一问中的 $a_1$，$a_2$ 代入上式并整理得：

\> 当 $2n\tau \leqslant t \leqslant (2n+1)\tau$，

$$
v = \frac{eU_0}{md}[t - (k+1)n\tau]
$$

\> 当 $(2n+1)\tau \leqslant t \leqslant (2n+2)\tau$，

$$
v = \frac{eU_0}{md}[(n+1)(k+1)\tau - kt]
$$

$n = 0, 1, 2, ...$

## 2. 模拟

用 VPython 对问题二进行模拟，给出电子运动的实际轨迹、速度时间图像 $v-t$ 和 位移时间图像 $y-t$。

取电子的荷质比为 $1.75 × 10^11 C/kg$，$\tau = 1 × 10^{-6} s$，为方便模拟，取 $d = 1m$。

### 2.1 当 $k = 1$ 情况

令 $k = 1$，即正向电压和反向电压相等，，取电压为 $U = 1 V$，绘制 $0 - 2 \tau$ 粒子的 速度时间图像 $v-t$ 和 位移时间图像$y-t$，如下图所示。

<img src='/assets/images/2020-06-13-particles-in-periodic-electric-and-magnetic-field-2/vt_i.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 由于位移时间图像 $y-t$ 的图像是抛物线，在 $0 - 2 \tau$ 内是由两段抛物线构成。

绘制 30 个周期内的图像，如下图所示。

<img src='/assets/images/2020-06-13-particles-in-periodic-electric-and-magnetic-field-2/xt_30.png' style='zoom:40%; margin: 0 auto; display: block;'/>


### 2.2 当 $k < 1 $ 情况

当 $k < 1 $时，即正向电压大于反向电压，取电压为 $U = 0.95 V$，下面给出 10 个周期的速度时间图像 $v-t$。

<img src='/assets/images/2020-06-13-particles-in-periodic-electric-and-magnetic-field-2/vt_less.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 每经过一个周期后，电子的末速度都要比前一个周期末速度大。

将 $k = 1$ 与 $k < 1 (k = 0.95)$ 的位移时间图像 $y-t$ 的图像进行比较。

<img src='/assets/images/2020-06-13-particles-in-periodic-electric-and-magnetic-field-2/compare.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 30 个周期后， $k < 1 (k = 0.95)$ 的电子竖直位移比 $k = 1 $ 的电子竖直方向的位移大（$k < 1$ 情况下，每个周期电子的平均速度都会增大，位移也会增加）。

### 2.3 当 $k > 1 $ 情况

当 $k > 1 $时，即正向电压小于反向电压，取电压为 $U = 1.05 V$，下面给出 30 个周期的速度时间图像 $v-t$。

<img src='/assets/images/2020-06-13-particles-in-periodic-electric-and-magnetic-field-2/vt_great.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 每经过一个周期后，电子的末速度都要比前一个周期末速度小。

<img src='/assets/images/2020-06-13-particles-in-periodic-electric-and-magnetic-field-2/xt_great.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 值得注意的是，当 $k > 1 $ 的位移图像中，电子在某个周期内的位移为 0 (图中红色部分)，这是本题的第三问，本文暂不讨论。



