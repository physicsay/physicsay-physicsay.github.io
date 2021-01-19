---
title:  建模教程 - 微分方程问题 - 电荷追击 (一)
url: mathematical-modeling-differential-equation-1
date: 2021-01-15 22:06:01
tags:
- Mathematical Modeling
- 模拟
- 数学建模 
categories: Modeling
description:  结合 2021 届江苏省四校 (南师附中、天一中学、海门中学、淮阴中学) 高三联考试卷第 13 选择题，讲解微分方程的建模以及求解。
---

## 0. 题目

如图所示，在光滑绝缘的水平面上有两个质量相等、带电量不等的小球 $a$ 和 $b$，初始 $a$ 位于 $O$ 点，$b$ 在 $O$ 点右侧，$t = 0$ 时刻给 $a$ 一个正对 $b$ 的初速度 $v_0$，在以后运动过程中 $a$ 和 $b$ 始终未接触，下列图线分别是：两球间库仑力 $F$ 随时间 $t$ 变化图、两球速度 $v$ 随时间 $t$ 变化图、两球电势能 $E_p$ 随 $a$ 位移 $x_a$ 变化图、$b$ 球动能 $E_{kb}$ 随 $b$ 的位移 $x_b$ 变化图。

<img src='/assets/images/2021-01-15-mathematical-modeling-differential-equation-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

其中能大致正确反映两球运动规律的是 (      )

<img src='/assets/images/2021-01-15-mathematical-modeling-differential-equation-1/choices.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 1. 微分方程模型的建立

### 1.1 分析

由于 $a$、$b$ 球带同种电荷，受到的库仑力相斥（方向相反）。在初始状态，$a$ 球以速度 $v_0$ 向右运动，而 $b$ 球静止。在 $a$ 球接近 $b$ 球的过程中，$a$、$b$ 之间的距离逐渐减小，库仑力增加，$b$ 受到 $a$ 向右的斥力（即合力向右），会向右加速运动；此时，$a$ 受到的斥力向左，与 $a$ 运动方向相反，因此 $a$ 做的是减速运动。由于斥力存在，$a$、$b$ 球的距离会变大，库仑力会变小，又会反过来影响 $a$、$b$ 球的运动。

### 1.2 建立坐标系

这里有两个球，每个球的运动都遵循牛顿运动定律。首先，需要建立坐标系，以 $a$ 球为坐标原点，向右为正方向，建立坐标系 $O-xy$。在某时刻 $t$，$a$ 球运动的距离为 $x_1$，速度为 $v_1$，$b$ 球运动的距离为 $x_2$，速度为 $v_2$，如下图所示。

<img src='/assets/images/2021-01-15-mathematical-modeling-differential-equation-1/ref.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 1.3 建立微分方程

如上图所示，写出了 $t$ 时刻 $a$、$b$ 球的位置和速度，即可以得到两球的库仑力及加速度。

对于 $a$ 球而言，受到向左的库仑力，大小为

$$
F_a = -\frac{kQq}{(x_2 - x_1)^2} = ma_1
$$

这里负号表示与正方向（右）相反。

$b$ 球受到向右的库仑力，大小为

$$
F_b = \frac{kQq}{(x_2 - x_1)^2} = ma_2
$$

这样就写出了两球的加速度表达式，再利用加速度的微分形式：

$$
a = \frac{d^2x}{dt^2} 
$$

以 $a$ 球为例，$a$ 球的加速度为 $a_1$，此时距离 $O$ 点的坐标为 $x_1$，因此可以写出 $a$ 球的加速度为 

$$
a_1 = \frac{d^2x_1}{dt^2}  
$$

则可以写出 $a$、$b$ 球的微分方程组：

$$
\frac{d^2x_1}{dt^2} = -\frac{kQq}{m}\frac{1}{(x_2 - x_1)^2}
$$

$$
\frac{d^2x_2}{dt^2} = \frac{kQq}{m}\frac{1}{(x_2 - x_1)^2}
$$

## 2. Matlab 求解

根据牛顿运动定律，建立了 $a$、$b$ 球的微分方程组，求出解析解（表达式）比较困难，这里可以使用 Matlab 的 ODE 方法求解。ODE 是 Matlab 专门用于解微分方程的功能函数。一般使用 `ode45` 方法求解，采用了 Runge-Kutta 算法。

模型假定 $k = 1$，$Q = 1.1$，$q = 1$, $m = 1$，初始速度 $v_0 = 2 m/s$，$a$、$b$ 距离为 $2 m$。绘制了 $a$、$b$ 球的位置 $x$ 随着时间 $t$ 变化关系、速率 $v_a$，$v_b$ 随时间 $t$ 变化关系、库仑力大小 $F$ 随时间 $t$ 变化关系，以及 $b$ 球动能 $E_{kb}$ 随 $x_b$ 距离变化关系，如下图所示。


<img src='/assets/images/2021-01-15-mathematical-modeling-differential-equation-1/Four.png' style='zoom:40%; margin: 0 auto; display: block;'/>

(1) 图中，$a$ 球在不断靠近 $b$ 球，$b$ 球刚开始的位置变化较小，当 $a$ 球很靠近 $b$ 球时，$b$ 球的加速度变大，速度增加。  

(2) 图中显示了 $a$、$b$ 球的速度变化，$b$ 球运动的加速度先变大后变小。  

(3) 图中给出了库仑力大小随着时间的变化关系，会在某一时刻达到最大，此时 $a$、$b$ 球的距离最近。  

(4) 图中给出了 $b$ 球的动能随着 $b$ 球运动距离的变化关系，当 $a$、$b$ 距离足够远时，$b$ 球的动能保持不变，而 $b$ 球会做近似匀速直线运动，图像上显示为一条渐近线。  

> 这里仅仅给出一些常见的图像，后续的文章会对 $a$、$b$ 球的运动图像、能量等继续进行讨论。

## 3. Python 模拟

可以使用 Python 对两个小球的运动状态进行可视化模拟。

<img src='/assets/images/2021-01-15-mathematical-modeling-differential-equation-1/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

以下是 Python 代码：

```python 
from vpython import *

canvas(width= 1000, height = 1000, center = vector(0,0,0), background = color.white)

ballA = sphere(pos = vector(0, 0.2, 0), velocity = vector(2, 0, 0), radius = 0.2, color = color.red)
ballB = sphere(pos = vector(2, 0.2, 0), velocity = vector(0, 0, 0), radius = 0.2, color = color.yellow)
floor = box(pos =vector(5, -0.25,0), size = vector(10, 0.5, 1))

x_axis = arrow(pos=vector(0, 0, 0), axis=vector(10, 0, 0), shaftwidth=0.02, color = color.black)
y_axis = arrow(pos=vector(0, 0, 0), axis=vector(0, 4, 0), shaftwidth=0.02, color = color.black)

k = 1; Q = 1.1; q = 1; m = 1;

dt = 0.01

for i in range(1000):
	rate(100)
	a1 = k * Q * q / (ballA.pos.x - ballB.pos.x ) ** 2 * vector(-1, 0, 0);
	a2 = k * Q * q / (ballA.pos.x - ballB.pos.x ) ** 2 * vector(1, 0, 0)
	ballA.velocity += a1 * dt;
	ballB.velocity += a2 * dt;
	ballA.pos += ballA.velocity * dt;
	ballB.pos += ballB.velocity * dt;
```

从图中可以看出 $a$ 球在靠近 $b$ 球的过程中，速度会减小，因为受到的库仑力变大了。另外，当 $a$ 球的速度变成 0 后，$a$ 球由于受到库仑力，会向左运动，而 $b$ 球的运动方向始终向右，这点在 Matlab 的程序输出结果中并未讨论。

## 4. 讨论

1. 如果不用模拟的方式，怎么来讲解库仑力 $F$ 随着时间 $t$ 的变化关系曲线？  
2. 由于带电粒子在做变速运动时，会有辐射，此处不考虑辐射能量，当作理想模型处理。



注：当然，在做题的时候肯定是没法模拟，需要思考下的。
---


