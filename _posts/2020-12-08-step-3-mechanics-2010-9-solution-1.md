---
title: 连接体问题求解 (一) —— 改编自 2010 STEP 3 - Mechanics 第 9 题
url: step-3-mechanics-2010-9-solution-1
date: 2020-12-08 08:08:39
tags:
- STEP
- A Level
- Mechanics
categories:  mechanics
description: 以 2010 STEP 3 Mechanics 第 9 题 (改编) 为例，提供解题思路，并给出两种求解方式。
---

## 0. 改编题

> 本题来自 2010 STEP 3 Mechanics 第 9 题，略有改编。

The diagram shows two particles, $P$ and $Q$, connected by a light inextensible string which passes over a pully. Thr block is smooth and is fixed to a horizontal table. The cross-section of the block, radius $r$, is a quarter circle with centre $O$, which is at the edge of the table. The angle between $OP$ and the table is $\theta$. The masses of $P$ and $Q$ are $m$ and $M$, respectively, where $m \lt M$.

Initially, $P$ is held at rest on the table and in contact with the block, $Q$ is vertically above $O$, and the string is taut. Then $P$ is released. $P$ remains in contact with the block as $\alpha$ increases from $0$ to $\frac{\pi}{2}$ in the subsequent motion.

1. Find an expression for the normal reaction of the block on $P$, using $m$, $M$, $\alpha$ and $g$;
2. Show that

$$
\frac{m}{M} \geqslant \frac{\pi-1}{3}
$$

<img src='/assets/images/2020-12-08-step-3-mechanics-2010-9-solution-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 中文版

如图所示，物体 $P$ 用不可伸长的轻绳绕过光滑的定滑轮与物体 $Q$ 相连，$P$ 放置于固定在水平桌面的木块上，木块的横截面是以 $O$ 为圆心，半径为 $r$ 的四分之一圆，位于桌面边缘。$P$ 和 $Q$ 的质量分别为 $m$ 和 $M$，且 $m \lt M$。

$P$ 静止在桌面上并与木块接触，$Q$ 在 $O$ 点正上方，绳子绷紧。若释放物体 $P$，在 $\theta$ 从 $0$ 到 $\frac{\pi}{2}$ 的过程中 $P$ 始终未脱离木块。

1. 求木块对 $P$ 的支持力 (用 $m$、$M$、$\alpha$ 和 $g$ 表示)；  
2. 证明：
$$
\frac{m}{M} \geqslant \frac{\pi-1}{3}
$$

## 1. 解析 (一)

这是一个连接体问题，由于 $P$ 和 $Q$ 物体用一根轻质绳子连接，$P$ 在弧面运动时，$Q$ 点会下落。由于 $P$ 在整个过程中始终未脱离木块，即 $P$ 运动的速度始终沿着圆弧的切线方向。

对 $P$ 和 $Q$ 物体进行受力分析，并判断状态：

<img src='/assets/images/2020-12-08-step-3-mechanics-2010-9-solution-1/analysis.png' style='zoom:40%; margin: 0 auto; display: block;'/>

$P$ 物体受到重力 $W_P$，木块支持力 $R$，绳子的拉力 $T$。而 $Q$ 物体受到重力 $W_Q$，绳子的拉力 $T$ (同一根绳子的拉力相同)。

由于 $m \lt M$，因此 $Q$ 物体会向下运动，假设向下运动的加速度为 $a$。由于同一根绳子拉力相同，因此 $P$ 物体会沿着切线做加速运动，此外 $P$ 物体又在圆弧面上做圆周运动。

在某一角度 $\alpha$ 下，$P$ 点做圆周运动的方程：

$$
m g sin \alpha - R = m\frac{v^2}{r} 
$$

> 这里的 $v$ 指的是切向速度。

由于 $Q$ 物体下落以及绳子的牵引作用，$P$ 物体沿着切线方向的速度在不断增加。可以写出物体 $P$ 在切线方向的方程：

$$
T - mgcos \alpha = m a
$$

以及 $Q$ 物体下落的方程：

$$
Mg - T = M a
$$

这里，切线方向的加速度会使得速度 $v$ 增加，求解起来比较困难 (可看下篇文章介绍)。 那应该怎么处理呢？

上面三个方程写出了 $P$、$Q$ 两物体受力和运动，那还应该从哪个角度思考呢？—— 能量！

> 试着用动力学的角度求解。

可以写出 $P$、$Q$ 两物体在运动过程中能量的变化：$P$ 物体在上升， $Q$ 物体在下降，两者的动能都在增加，运动速度也相同。

$Q$ 物体下降重力势能减小，转化为 $P$、$Q$ 增加的动能，以及 $P$ 物体重力势能的增加。可写出如下方程：

$$
MgR\alpha = \frac{1}{2}Mv^2 + \frac{1}{2}mv^2 + mgRsin\alpha
$$

> $P$ 运动的角度为 $\alpha$，移动的距离为 $R\alpha$，这就等于 $Q$ 物体向下移动的距离，而 $P$ 物体实际上升 $R sin\alpha$。

结合第 1 和 4 方程， 可以消去 $v^2$，得到支持力 $N$ 的表达式，如下：

$$
N = mgsin\alpha - \frac{2m}{R(m+M)}(MgR\alpha - mgRsin\alpha)
$$

由于题目中提及 $P$ 物体始终未脱离圆弧面，因此圆弧面的支持力 $N$ 始终为正 (或为 0)。对支持力的表达式进行整理，可得：

$$
N = \frac{mg[3m sin \alpha + M(sin\alpha-2\alpha)]}{m+M}
$$

当支持力 $N$ 不能为负，即有：

$$
mg[3m sin \alpha + M(sin\alpha-2\alpha)] \geqslant 0
$$

整理可得，

$$
\frac{m}{M} \geqslant \frac{2\alpha-sin\alpha}{3sin\alpha}
$$

当 $\alpha$ 从 $0$ 到 $\frac{\pi}{2}$ 变化时，$\frac{m}{M}$ 应大于 $\frac{2\alpha-sin\alpha}{3sin\alpha} $ 的最大值。当 $\alpha = \frac{\pi}{2}$ 有最大值 $\frac{\pi-1}{3}$。即

$$
\frac{m}{M} \geqslant \frac{\pi-1}{3}
$$

> 这里要注意 $\frac{2\alpha-sin\alpha}{3sin\alpha} $ 在 $[0, \frac{\pi}{2}]$ 为单调递增，在 $\frac{\pi}{2}$ 取最大值。


