---
title: 建模教程 - 绕定点旋转 (一)
url: mathematical-modeling-rotation-with-fix-point
date: 2020-10-23 22:02:25
tags:
- Mathematical Modeling
- 模拟
- 数学建模
categories: Modeling
description: 本文先阐述了绕原点旋转的公式，再拓展为绕定点旋转的公式。
---


二维平面中的某点要绕着定点旋转某个角度，可以通过几何的方式求解出。下面先介绍绕原点旋转的公式，再到绕某个定点旋转的公式，最后用 Matlab 绘制这样的旋转图。


## 1. 绕原点旋转

假定 $P$ 点坐标 $(x, y)$，与 $x$ 轴的夹角为 $\theta$，现 $P$ 点绕着 $O$ 点旋转 $\alpha$ 后，求 $Q$ 点的坐标 $(x', y')$ 的表达式，如下图所示。

<img src='/assets/images/2020-10-23-mathematical-modeling-rotation-with-fix-point/fig1.png' style='zoom:40%; margin: 0 auto; display: block;'/>

设 $OP$ 的长度为 $r$，因此 $P$ 点的坐标可以写成 

$$
x = r cos(\theta)
$$

$$
y = r sin(\theta)
$$

> $P$ 点旋转 $\alpha$ 后得到的 $Q$ 点，在旋转的过程中，距原点的距离保持不变，即 $OP = OQ$ 。

考虑 $Q$ 点的坐标 $(x', y')$，同样可以写出 $Q$ 点的 $x$，$y$ 坐标分量：


$$
x = r cos(\theta + \alpha)
$$

$$
y = r sin(\theta + \alpha)
$$

将上式展开 $sin(A + B) = sin A cosB + sin B cos A$， $cos(A + B) = cos A cosB - sin A sin B$。

并将 $P$ 点的 $x$，$y$ 坐标代入，可得

$$
x' = rcos\theta cos\alpha - r sin\theta sin\alpha = xcos\alpha - ysin\alpha
$$

$$
y' = rcos\theta sin\alpha + r sin\theta cos\alpha = ycos\alpha + xsin\alpha
$$

即通过 P 点的 $(x, y)$ 坐标，以及逆时针旋转的角度 $\alpha$ 就能求解得到新的旋转坐标 $Q(x', y')$。

> 注意，这里旋转的方向为逆时针旋转，若要顺时针旋转，则需要设置 $\alpha$ 为负。

用 Matlab 模拟这样的旋转过程，如下图所示。

三个点 $A(3,2)$，$B(5,2)$，$C(5,4)$，绕着原点旋转。

<img src='/assets/images/2020-10-23-mathematical-modeling-rotation-with-fix-point/rotate_origin.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

## 2. 绕某定点旋转

若 $P(x, y)$ 是绕定点 $F(a, b)$ 旋转 $\alpha$ 角度到达 $Q(x', y')$ 点，求 $Q$ 点的表达式。

<img src='/assets/images/2020-10-23-mathematical-modeling-rotation-with-fix-point/fig2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

这里，过 $P$ 点作水平方向的垂线，与 $F$ 点所在的 $y$ 坐标线交于 $R$ 点(如上图所示)。

写出 $P$ 点的 $x$，$y$ 距离表达式：

$$
x - a = r cos\theta
$$

$$
y - b = r sin\theta
$$

> $\theta$ 是 $FP$ 与 $FR$ 的夹角，而 $FR = x - a$，$PR = y - b$。

当旋转 $\alpha$ 角度后，到达 $Q$ 点，可以写出 Q 点的方程：

$$
x' - a = rcos(\theta + \alpha)
$$

$$
y' - b = r sin(\theta + \alpha)
$$

将上式展开，并将 $P$ 的距离表达式代入，则可以计算出 Q 点的坐标：

$$
x' - a = (x - a) cos\alpha - (y - b) sin\alpha
$$

$$
y' - b = (x - a) sin\alpha + (x - a) cos\alpha
$$

即有定点 $F(a, b)$ 坐标，$P(x, y)$ 点坐标，以及逆时针旋转的角度 $\alpha$，就可以得到 $Q(x', y')$ 点的坐标。

下面用 Matlab 模拟这样的过程，如下图所示。

三个点 $A(3,2)$，$B(5,2)$，$C(5,4)$，绕着定点 $F(2,1)$ 旋转。

<img src='/assets/images/2020-10-23-mathematical-modeling-rotation-with-fix-point/rotate_fix.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

---
参考  
1. [MATLAB：动图画法](https://zhuanlan.zhihu.com/p/62579302)。
2. [Matlab如何制作和保存gif动图](https://blog.csdn.net/lusongno1/article/details/78632457)


