---
title:  用 VPython 模拟单摆运动 (二)
url: pendulum-simulation-2
date: 2020-04-18 16:31:22
tags:
- VPython
- 可视化
categories: mechanics
description: 探究影响单摆周期的因素
---

上文用 Vpython 制作了单摆的运动，本文用 Vpython 来研究影响单摆周期的因素。

## 1. 单摆周期

绘制单摆运动角度与时间 $\theta - t$ 的关系曲线：

<img src='/assets/images/2020-04-18-pendulum-simulation-2/period.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 注意上图中的箭头处。

## 2. 影响因素
我们来探究下影响单摆运动的因素有哪些？

### 2.1 分析
根据方程

$$
ml\frac{d^2\theta}{dt^2} = -mgsin\theta
$$

可以发现单摆运动角度和重力加速度 $g$ 及 摆线长度 $l$ 有关。

在小角度下(约 5 度)以内，单摆的周期公式为：

$$
T = 2\pi\sqrt{\frac{l}{g}}
$$

### 2.2 模拟

绘制不同摆长下小球的运动周期，假设一根摆线长度为 10， 另一根摆线长度为 5，初始角度为 10 并从静止开始释放，绘制运动轨迹 和 $\theta-t$ 图像。

<img src='/assets/images/2020-04-18-pendulum-simulation-2/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

<img src='/assets/images/2020-04-18-pendulum-simulation-2/motion-t.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 2.3 误差分析

一般在实验中，会测量悬点到单摆小球中心的距离，而不是悬线的长度。若只测量悬线的长度，计算出的周期要比实际周期小。

我们来简单计算下中间的误差。假设悬线的长度为 1 m，小球半径为 1 cm， 重力加速度取 10 $m/s^2$。

若只考虑悬线长度，则周期为 $\frac{\sqrt{10}\pi}{5} \approx 1.9869 s$。若考虑悬点到小球中心点的距离，则周期为：$1.9968 s$，误差为 0.59%。

因此，在选用单摆小球时，应该选择形状小但质量大的小球。

### 2.4 代码

以下是不同长度摆线小球运动的代码：

```python
# -*- coding: utf-8 -*-
# @Author: jiap
# @Wechat: 物理说(Physicsay)
# @Homepage: www.physicsay.com

from vpython import *

g = 10; H = 11
theta1 = theta2 = 20;
vel1 = vel2 = 0
l1 = 10; l2 = 5

ball1 = sphere(pos = vector(l1* sin(theta1 / 180 * pi), (H - l1 * cos(theta1 / 180 * pi)), 0), radius = 0.5, color = color.green, make_trail=True, retain = 200)
ball2 = sphere(pos = vector(l2* sin(theta2 / 180 * pi), (H - l2 * cos(theta2 / 180 * pi)), 0), radius = 0.5, color = color.black, make_trail=True, retain = 200)

pivot = vector(0, H, 0)
roof = box(pos = pivot, size = vector(10, 0.5, 10))
rod1 = cylinder(pos = pivot, axis = ball1.pos - pivot, radius = 0.1, color= color.red)
rod2 = cylinder(pos = pivot, axis = ball2.pos - pivot, radius = 0.1, color= color.black)

back = box(pos=vector(0,H/2,-0.5), size = vector(10,11, 0.5)) 

t = 0
dt = 0.1

while (t < 1000):
	rate(100)
	acc1 = - g / l1 * sin(theta1 / 180 * pi)
	vel1 = vel1 + acc1 * dt
	theta1 = theta1 + vel1  * 180/pi * dt
	ball1.pos = vector(l1 * sin(theta1 / 180 * pi), (H - l1 * cos(theta1 / 180 * pi)), 0)
	rod1.axis = ball1.pos - pivot

	acc2 = - g / l2 * sin(theta2 / 180 * pi)
	vel2 = vel2 + acc2 * dt
	theta2 = theta2 + vel2  * 180/pi  * dt
	ball2.pos = vector(l2 * sin(theta2 / 180 * pi), (H - l2 * cos(theta2 / 180 * pi)), 0)
	rod2.axis = ball2.pos - pivot

	t = t + dt
```

## 思考：
1. 单摆运动中动能和势能是如何转换的呢？