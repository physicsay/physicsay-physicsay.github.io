---
title:  两种方法求解 Mechanics 16C 的弹簧问题
url: mechanics-FM-textbook-exercise-16C-3
date: 2020-12-14 18:12:20
tags:
- A Level
- Mechanics
categories: mechanics
description: 以 Cambridge Further Mathematics 中的 Mechanics 16C 章节第三习题为例，用两种方法进行解析。 
---

## 0. 真题

本题来自 Cambridge Internation AS & A Level Further Mathematics: Further Mechanics (剑桥 A Level 高数力学) 16C 课后习题第 3 题。

A Particle, $P$, of mass $3 kg$ is attached to one end of light, elastic spring. The other end of the spring is attached to a ceiling at the point $A$. The spring has natural length $1.6m$ and modulus of elasticity $45 N$. The system rests in equilibrium with the spring vertical.

(a). Find the extension in the spring.  
(b). The particle is pulled down a further $0.6 m$ and released. Find the distance of the particle below the point $A$ when it first comes to instantanrous rest.

> 中文版

质量为 $3 kg$ 的物体 $P$ 连接在轻质弹性弹簧的一端，弹簧的另一端 $A$ 挂在天花板上。弹簧的劲度系数为 $28.125 N/kg$，物体 $P$ 在垂直方向处于静止。

(a). 求物体 P 静止时弹簧的伸长量。
(b). 将 P 从平衡位置向下拉 $0.6m$ 并释放，物体 $P$ 向上运动到静止时，求此时距离 A 的距离。

> 注1. 英文题中使用了 `natural length` 和 `modulus of elasticity`，中文版使用了`劲度系数`，并做了相应的替换，有 $\frac{\lambda}{l} = k$。  
> 注2. $g = 10 N/kg$。



## 1. 第一问

首先画出示意图，如下所示。

<img src='/assets/images/2020-12-14-mechanics-FM-textbook-exercise-16C-3/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

当物体 P 处于平衡状态时，弹簧施加向上的拉力和物体的重力平衡，可以列出方程

$$
\frac{\lambda}{l} \cdot x = mg
$$

其中 $\lambda$ 是 `modulus of elasticity`，$l$ 是 `natural length`，$x$ 是弹簧的伸长量，计算可得 $x = 1.07 m$。

## 2. 第二问

第二问中，将弹簧从平衡位置继续拉下 $0.6 m$，求释放后，物体 $P$ 速度为 0 时上升的高度。

由于再次下拉 $0.6 m$，导致弹簧的拉力大于物体的重力，释放瞬间有向上的加速度；但物体上升过程中，弹簧的伸长量逐渐减小，弹簧的弹力逐渐变小，加速度逐渐减小，速度**增加**的越来越慢。

<img src='/assets/images/2020-12-14-mechanics-FM-textbook-exercise-16C-3/analysis1.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 由于速度和加速度方向相同，物体在向上做加速运动，在平衡位置合力为 0，此时向上运动的速度达到最大。

到达平衡位置后，弹簧的拉力小于重力，此时合力方向向下，加速度向下，此时物体仍有向上的速度，速度会不断减小，直至为0。

<img src='/assets/images/2020-12-14-mechanics-FM-textbook-exercise-16C-3/analysis2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 物体运动到最高点，速度为 0，此时加速度最大。

### 2.1 方法一 —— 能量守恒

上面的分析可知，在物体运动过程中，由于加速度在不断发生变化，因此很难使用运动学求解，可以使用能量守恒来解决这个题：

在最低点，物体具有弹性势能，无动能和重力势能(假设最低点为零势能面)。

$$
E_1 = \frac{\lambda}{2l} x_1^2
$$

> 伸长量 $x_1 = 0.6 + 1.07 = 1.67 m$。

当释放并运动到最高点时，物体具有弹性势能和重力势能，无动能 (速度为 0)。

$$
E_2 = \frac{\lambda}{2l} (1.67 - x)^2 + mgx
$$

> 这里 $x$ 指的是物体从最低点上升到最高点的距离，在最高点弹簧的伸长量为 $(1.67-x)$，具有的弹性势能为 $\frac{\lambda}{2l} (1.67 - x)^2$。

由于两个状态下能量守恒， $E_1 = E_2$，可以解出 $x = 1.21 m$。因此物体 $P$ 会上升 $1.21m$ 到达最高点，此时距离天花板 $A$ 的距离为 $2.07 m$。

### 2.2 方法二 —— 微积分

在 Mechanics 中可以使用微积分的方法求解。

取向上为 $x$ 轴正方向，释放位置为 $O$ 点，当物体 $P$ 运动的距离为 $x$ 时速度为 $v$。

<img src='/assets/images/2020-12-14-mechanics-FM-textbook-exercise-16C-3/calculus.png' style='zoom:40%; margin: 0 auto; display: block;'/>

在 $P$ 点物体受到重力和弹力的作用，由于重力是竖直向下，与定义的正方向相反，取负号。

列出牛顿运动定律，写出加速度

$$
\frac{\lambda}{l}(1.67 - x) - mg = ma
$$

> 这里弹簧的伸长量为 $1.67 - x$

考虑到加速度 $a$ 可以写成微分形式 $a = \frac{dv}{dt}$。

但等式左边含有 $x$ 变量，等式右边有 $v$、$t$，因此需要使用链式法则做代换。

$$
\frac{dv}{dt} = \frac{dv}{dx}\frac{dx}{dt} = v\frac{dv}{dx}
$$

代入上式有：

$$
\frac{\lambda}{l}(1.67 - x) - mg = mv\frac{dv}{dx}
$$

整理可得：

$$
vdv = [\frac{\lambda}{ml}(1.67-x)-g]
$$

得到 

$$
v^2 = 11.31x - 9.38x^2 + C
$$

代入初始条件，当 $x = 0$ 时，$v = 0$，可以得到 $C = 0$。

当 $v = 0$，求出另一个 $x$ 的值 $x = 1.20 m$。

此时距离天花板 $A$ 的距离为 $2.07 m$。

### 2.3 方法二讨论

1. 由于释放瞬间物体的速度为0，到达最高点速度也为 0，求出的 $v$ 关系式应该有形如 $x(x - x_0)$ 的形式，当速度 $v = 0$ 时，存在两个解 $x = 0$ 和 $x = x_0$。

2. 绘制 $v$ 和 $x$ 的图像：

<img src='/assets/images/2020-12-14-mechanics-FM-textbook-exercise-16C-3/plot.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 注意: $v$ 和 $x$ 的关系不满足抛物线关系。

在 $x = 0.6$ 时，$v$ 有最大值。


