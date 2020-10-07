---
title: 力学中的碰撞问题 (二) —— 以 2020 年济南市高三第一次模考题为例
url: mechanics-collision-problem-2
date: 2020-10-06 15:33:07
tags:
- 可视化
- VPython
categories: mechanics
description: 以 2020 年济南市高三第一次模考题为例，研究力学中的碰撞问题。
---

## 0. 模拟题

如图所示，相距 $L = 5m$ 的粗糙水平直轨道两端分别固定两个竖直挡板，距左侧挡板 $L' = 2m$ 的 O 点处静止放置两个紧挨着的小滑块 A、B，滑块之间装有少量炸药。炸药爆炸时，能将两滑块分开并保持在直轨道上沿水平方向运动。滑块 A、B 的质量均为 $m = 1kg$，与轨道间的动摩擦因数均为 $\mu = 0.2$。不计滑块与滑块、滑块与挡板间发生碰撞时的机械能损失，滑块可看作质点，重力加速度 $g$ 取 $10m/s^2$。  
(1) 炸药爆炸瞬间，若有 $Q_1 = 10J$ 的能量转化成了两滑块的机械能，求滑块A最终离开出发点的距离；  
(2) 若两滑块 A、B 初始状态并不是静止的，当它们共同以 $v = 1m/s$ 的速度向右经过 O 点时炸药爆炸，要使两滑块分开后能再次相遇，则爆炸中转化成机械能的最小值 $Q_2$ 是多少？

<img src='/assets/images/2020-10-06-mechanics-collision-problem-2/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>


## 1. 解析

### 1.1 第一问

在第一问中，建立坐标轴 $O-x$，向右为正方向。滑块 A、B 在爆炸前后动量，列出以下方程：

$$
m_A v_A + m_B v_B = m_A u_A + m_B u_B
$$

而爆炸后，有 $Q_1 = 10 J$ 的能量转换为两滑块的机械能，列出机械能守恒方程：

$$
10J = \frac{1}{2}m_A u_A^2 + \frac{1}{2}m_B u_B^2
$$

此中已知 $v_A = v_B = 0 m/s$，$m_A = m_B = 1.0 kg$，而 $u_A$，$u_B$ 是 A、B 碰撞后的速度。代入上式可解得爆炸后两者的速度分别为 $u_A = -\sqrt{10} m/s$，$u_B = \sqrt{10} m/s$，即滑块 A 向左运动，滑块 B 向右运动。

> 第一问的解答可以参考[1] 中的解析。

### 1.2 第二问

由于两滑块 A、B 初始状态并不是静止的，是以 $v_0 = 1m/s$ 的速度向右运动。因此可能会有不同的情况。以 O 点为原点，建立坐标轴，向右为正方向。

因为滑块与地面具有摩擦力，因此速度会越来越慢，最终停下。考虑临界情况，滑块 A、B 要发生二次碰撞，即两者最后停下时的间距应该为 0。

滑块 A、B 运动到静止时的距离为 $s_A = \frac{u_A^2}{2\mu g}$、$s_B = \frac{u_B^2}{2\mu g}$。

**(1)**. 第一种情况：滑块 A 向左运动，滑块 B 向右运动，A 经过挡板反弹后追上 B。

<img src='/assets/images/2020-10-06-mechanics-collision-problem-2/analysis1.png' style='zoom:40%; margin: 0 auto; display: block;'/>

在 O 点动量守恒，有 $(m_A + m_B)v_0 = m_B u_B - m_A u_A$。

> 这里滑块 B 向右，速度 $u_B$ 为正，滑块 A 向左，速度 $u_A$ 为负。

根据上图写出滑块 A、B 运动距离的等式：

$$
s_A - s_B = 2 L'
$$

> $L'$ 是滑块 A 到挡板的距离。 

上式不能成立，因为根据动量守恒有 $u_B = u_A + 2v_0$，即 $s_B \gt s_A$，因此不存在这样的情况。

**(2)**. 第二种情况：滑块 A 向左运动，滑块 B 向右运动，B 经过挡板反弹后追上 A。

<img src='/assets/images/2020-10-06-mechanics-collision-problem-2/analysis2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

在 O 点动量守恒，有 $(m_A + m_B)v_0 = m_B u_B - m_A u_A$。

根据上图写出滑块 A、B 运动距离的等式：

$$
s_B - s_A = 2 (L - L')
$$

> $(L - L')$ 是滑块 B 到挡板的距离。 

可以解得 $u_A = 5m/s$，$u_B = 7m/s$，再来计算滑块 A 移动的距离是否超过 $L = 2m$? 计算可得 $s_A = 6.25m \gt 2m$，因此滑块 A 移动的距离超过 $2m$，会与挡板碰撞，这种情况不成立。

**(3)**. 第三种情况：滑块 A 向左运动，滑块 B 向右运动，都经过挡板反弹。

<img src='/assets/images/2020-10-06-mechanics-collision-problem-2/analysis3.png' style='zoom:40%; margin: 0 auto; display: block;'/>

在 O 点动量守恒，有 $(m_A + m_B)v_0 = m_B u_B - m_A u_A$。

根据上图写出关于滑块 A、B 运动距离的等式：

$$
s_A + s_B = 2 L
$$

解出 $u_A = \sqrt{19} - 1 m/s$，$u_B = \sqrt{19} + 1 m/s$

计算此时滑块 A、B 移动的距离：

$$
s_A = \frac{(\sqrt{19}-1)^2}{4} \approx 2.8m
$$

$$
s_B = \frac{(\sqrt{19}+1)^2}{4} \approx 7.2m
$$

即滑块 A、B 移动的距离都大于距离挡板的距离，即会发生反弹，这种运动状态成立。计算需要的机械能 $Q_2$

$$
Q_2 = \frac{1}{2}mu_A^2 + \frac{1}{2}mu_B^2 - \frac{1}{2}2mv_0^2 = 19J
$$

**(4)**. 第四种情况：滑块 A 向右运动，滑块 B 向右运动，但 滑块 B 运动的快，且与挡板碰撞。

<img src='/assets/images/2020-10-06-mechanics-collision-problem-2/analysis4.png' style='zoom:40%; margin: 0 auto; display: block;'/>

在 O 点动量守恒，有 $(m_A + m_B)v_0 = m_B u_B + m_A u_A$。

> 滑块 B 向右，速度 $u_B$ 为正，滑块 A 向右，速度 $u_A$ 为正。

根据上图写出关于滑块 A、B 运动距离的等式：

$$
s_A + s_B = 2 (L - L')
$$

解出的值一正一负，但假设 $u_A$、$u_B$ 均为正数，无解。因此，这种情况也不成立。

综上所述，只有第三种情况成立，需要的机械能 $Q_2$ 至少为 $19 J$。

> 1. 这里给出了若干种可能的情况，并分析成立条件。
> 2. 上述图示仅作参考，将滑块视为质点，无需考虑滑块本身的尺寸。

---
参考
1. [力学中的碰撞问题(一) —— 以 2019 年全国 III 卷压轴计算题 与 2019 年福州高三质量检测压轴题为例](https://mp.weixin.qq.com/s/jChEeOGBpoE7ufqHWBB9Vw)


