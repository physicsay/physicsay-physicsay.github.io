---
title: 用 Vpython 模拟单摆运动 (一)
url: pendulum-simulation-1
date: 2020-04-18 15:51:27
tags:
- Vpython
- 可视化
categories: mechanics
description: 用 Vpython 模拟单摆的运动，让运动研究不再困难。
---

## 1. 单摆运动

在不计阻力的情况下，弹簧振子和小角度单摆的振动都视为简谐振动。之前的文章研究了弹簧振子的运动，本系列文章着重研究单摆的运动。

首先对单摆下一个定义：一根不会伸缩的细线，上端固定，下端悬挂一个很小的重物，把中午略加移动后就可以在竖直平面内来回摆动，这种装置称为单摆。

<img src='/assets/images/2020-04-18-pendulum-simulation-1/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

### 1.1 理论分析
(本节主要是单摆的理论分析，需要一定基础，不懂的同学可直接跳过)

<img src='/assets/images/2020-04-18-pendulum-simulation-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

写出小球的受力情况，在切向方向将重力分解为 $mgsin\theta$，提供物体的运动的切向加速度。

$$
ml\frac{d^2\theta}{dt^2} = -mgsin\theta
$$

## 2. 代码
### 2.1 分析

使用“微元”的思想，求解角加速度 $\alpha$，角速度 $\omega$ 和 角度 $\theta$，给出 $dt$ 时间内的变化量

$$
\alpha(t) = \frac{g}{l} sin \theta(t) \\
\omega(t + dt) = \omega(t) + \alpha(t) \cdot dt \\
\theta(t + dt) = \theta(t) + \omega(t) \cdot dt \\
$$

### 2.2 Python 代码

假定悬点到小球中心的长度为 10，初始角度为 30 并静止释放。

```python
# -*- coding: utf-8 -*-
# @Author: jiap
# @Wechat: 物理说(Physicsay)
# @Homepage: www.physicsay.com

from vpython import *

g = 10
theta = 30
l = 10
H = 11
t = 0
dt = 0.1
vel = 0

ball = sphere(pos = vector(l * sin(theta / 180 * pi), (H - l * cos(theta / 180 * pi)), 0), radius = 0.5, color = color.green)
pivot = vector(0, H, 0)
roof = box(pos = pivot, size = vector(10, 0.5, 10))
rod = cylinder(pos = pivot, axis = ball.pos - pivot, radius = 0.1, color= color.red)

while (t < 100):
	rate(100)
	acc = - g / l * sin(theta / 180 * pi)
	vel = vel + acc * dt
	theta = theta + vel * 180/pi * dt
	ball.pos = vector(l * sin(theta / 180 * pi), (H - l * cos(theta / 180 * pi)), 0)
	rod.axis = ball.pos - pivot
	t = t + dt
```

## 思考：
1. 既然知道了单摆的运动，那么影响单摆周期的因素有哪些呢？
2. 单摆运动中动能和势能是如何转换的呢？ 