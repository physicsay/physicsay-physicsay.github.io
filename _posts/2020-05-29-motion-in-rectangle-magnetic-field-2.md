---
title: 带电粒子在磁场中的运动 —— 以 2014 年江苏物理高考压轴题为例
url: motion-in-rectangle-magnetic-field-2
date: 2020-05-29 11:36:23
tags:
- 可视化
- 磁场
- 物理题
categories:  electromagnetism
description: 以 2014 年江苏物理高考压轴题为例，研究带电粒子在不同磁场中的运动。
---

## 0. 真题

某装置用磁场控制带电粒子的运动，工作原理如图所示。装置的长为 $L$，上下两个相同的矩形区域内存在匀强磁场，磁感应强度大小均为 $B$、方向与纸面垂直且相反，两磁场的间距为 $d$。 装置右端有一收集板，$M$、$N$、$P$ 为板上的三点，$M$ 位于轴线 $OO'$上，$N$、$P$ 分别位于下方磁场的上、下边界上。 在纸面内，质量为 $m$、电荷量为 $-q$ 的粒子以某一速度从装置左端的中点射入，方向与轴线成 $30°$ 角，经过上方的磁场区域一次，恰好到达 $P$ 点。改变粒子入射速度的大小，可以控制粒子到达收集板上的位置。不计粒子的重力。

<img src='/assets/images/2020-05-29-motion-in-rectangle-magnetic-field-2/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

(1) 求磁场区域的宽度 $h$；  
(2) 欲使粒子到达收集板的位置从 $P$ 点移到 $N$ 点，求粒子入射速度的最小变化量 $\Delta v$；  
(3) 欲使粒子到达 $M$ 点，求粒子入射速度大小的可能值。  


## 1. 解析

### 1.1 第一问

这里并没有给出入射到磁场的速度，因此通过 $qvB = m\frac{v^2}{r}$ 无法确定磁场的半径，也无法确定磁场的宽度。但根据题意：**方向与轴线成 $30°$ 角，经过上方的磁场区域一次，恰好到达 $P$ 点**，这个条件，可以大致画一下带电粒子刚好到达 $P$ 点的轨迹。

<img src='/assets/images/2020-05-29-motion-in-rectangle-magnetic-field-2/motion1.png' style='zoom:40%; margin: 0 auto; display: block;'/>

下面对上图轨迹进行分析，带电粒子在磁场中偏转的角度为 $60°$，取对称图形，图中的 $\alpha = 30°$。 

<img src='/assets/images/2020-05-29-motion-in-rectangle-magnetic-field-2/analysis1.png' style='zoom:40%; margin: 0 auto; display: block;'/>

要使得带电粒子恰好达到 $P$ 点，粒子在区域内刚好运动了 $\frac{3}{4}$ 个周期。

> 如果带电粒子的速度不同，会有影响吗？看下图

<img src='/assets/images/2020-05-29-motion-in-rectangle-magnetic-field-2/compare.png' style='zoom:40%; margin: 0 auto; display: block;'/>

从上图可以看出，粒子速度不同，影响的是磁场中运动的半径，但偏转角度仍为 $60°$。

可以列出以下几何关系：

$$
3 \cdot (\frac{\sqrt{3}}{2}d + R sin(30°)) = L
$$

磁场的最小宽度为：
$$
h = R \cdot（1-cos(30°)）
$$

消元去掉 $R$, 可以解得 $h$，为

$$
h = (1-\frac{\sqrt{3}}{2})(\frac{3}{2}L - \sqrt{3}d)
$$

### 2. 第二问

要从 $P$ 点移动至 $N$ 点，即粒子在下方磁场运动到最低点后，又偏转 $30°$ 才能到达 $N$ 点，如下图所示：

<img src='/assets/images/2020-05-29-motion-in-rectangle-magnetic-field-2/q2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 上图红色轨迹对应速度较大的情况，蓝色轨迹对应速度较小的情况。

可以看到粒子在非磁场区域运动的轨迹的 $x$ 距离是相同的，由于速度不同，导致粒子在磁场中的运动半径不同，也造成了粒子能到达挡板的位置不同。

设改变入射速度后粒子在磁场中的轨道半径为 $r'$。写出$v$ 和 $v'$ 的粒子在 $x$ 方向的距离，有如下几何关系：

$$
3r sin(30°) = 4r' sin(30°)
$$

再根据磁场距离 $L$ 的几何关系，可以解出速度的变化量

$$
\Delta v = v - v' = \frac{qB}{m}(\frac{L}{6} - \frac{\sqrt{3}}{4}d)
$$

> 这里的速度变化量需要用已知符号表示。改变后的速度要比之前的速度小。

### 1.3 第三问：

我们将带电粒子从 O 点运动至 M 点(轴线方向)，称为一个周期 $T$。如下图所示。

<img src='/assets/images/2020-05-29-motion-in-rectangle-magnetic-field-2/q3.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> $\frac{1}{4}$ 周期包括在非磁场区域运动 $\frac{\sqrt{3}}{2}d$ 和 $30°$ 对应的磁场偏转。

因此，要到达 $M$ 点，粒子运动可以是 $T$、$\frac{3}{2}T$、$2T$...

可以写出磁场长度的表达式：

$$
L = (2n + 2) \cdot [\frac{d}{2tan(30°)} + r \cdot sin(30°)], n = 1, 2, 3, ...
$$

> 这里的表达式中为什么要用 $(2n + 2)$，而不是 $2n$？ 因为题目中说 **粒子在上方磁场偏转一次，能到达 $P$ 点**，因此要达到 $M$ 点，至少会运动一个及以上周期。

再写出磁场偏转的向心力方程：

$$
qvB = m\frac{v^2}{r}
$$

可以解得

$$
v_n = \frac{qB}{m}(\frac{L}{n+1} - \sqrt{3}d)
$$

满足 $n \geqslant 1$ 且满足 $\frac{L}{n+1} - \sqrt{3}d \geq 0$

可得 

$$
1 \leqslant n \leq \frac{\sqrt{3}L}{3d} - 1
$$

---

我们用 VPython 模拟运动状态：

<img src='/assets/images/2020-05-29-motion-in-rectangle-magnetic-field-2/q3-ana.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 图中红色线的速度较大，蓝色其次，黄色线表示的速度最小(注：由于速度较小，粒子偏转的轨迹较小，图中展示不明显。)

这样就把带电粒子的可能的运动速度求解出来了。



