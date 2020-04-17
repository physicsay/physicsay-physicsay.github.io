---
title: 用 Vpython 模拟弹簧振子的简谐振动 (四)
url: oscillation-via-vpython-4
date: 2020-04-16 15:47:14
tags:
- 可视化
- Vpython
- 简谐振动
categories: mechanics 
description: 若存在摩擦力，弹簧振子的运动又是怎样的呢？
---

## 1. 阻尼振动

之前讨论的简谐运动假设振动不受任何阻力，由于能量守恒，将会一直振动下去，然而振动系统都有阻力作用。振动系统因受阻力作振幅减小的运动，叫阻尼振动。

可以写出振动的受力方程：

$$
m\frac{d^2x}{dt^2} = -kx - f
$$

我们假定以下模型：滑块在运动时受到滑动摩擦力，大小与正压力成正比 $f = \mu mg$

<img src='/assets/images/2020-04-16-oscillation-via-vpython-4/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 2. 几种不同的阻尼振动

通过改变滑块与平面间的摩擦系数，来确定弹簧振子的运动。这里仍然假定滑块的质量为 1， 弹簧的劲度系数为 1。

### 2.1 欠阻尼振动

假设滑块与平面的摩擦系数很小，可以猜测：随着每次移动，总会有能量损失，滑块运动的振幅会逐渐减小，直至滑块静止。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-4/under.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

绘制滑块距离平衡位置的图，如下所示。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-4/under_t.png' style='zoom:40%; margin: 0 auto; display: block;'/>

发现滑块距离平衡位置的振幅在不断减小。

### 2.2 临界阻尼振动

假设滑块与平面的摩擦系数稍微大一些，使得滑块从最远处静止释放后，很快回到平衡位置并停下来，这是一个临界情况。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-4/critical.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

绘制滑块距离平衡位置的图，如下所示。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-4/critical_t.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 2.3 过阻尼振动

假设摩擦系数很大，滑块释放后，会经过较长时间回到平衡位置停下来，这种运动称为过阻尼状态。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-4/over_t.png' style='zoom:40%; margin: 0 auto; display: block;'/>



## 3. 代码

下面是阻尼运动的主要代码。

> 通过修改不同的摩擦系数，可得不同的阻尼状态。

```python
# -*- coding: utf-8 -*-
# @Author: jiap
# @Wechat: 物理说 (Physicsay)

from vpython import *

mass_obj = box(pos = vector(12,0,0), velocity = vector(0,0,0), size = vector(1,1,1), color = color.blue, mass = 1)
pivot = vector(0, 0, 0)
spring = helix(pos = pivot, axis = mass_obj.pos - pivot, radius=0.4, constant = 1, thickness = 0.1, coils = 15, color =  color.red)

floor = box(pos=vector(7.5,-0.5,0), size=vector(15, 0.1, 4), color = color.green)
wall = box(pos=vector(0,0.5,0), size=vector(0.1, 2, 4), color = color.green)

eq = arrow(pos = vector(eq_pos.x, 2, 0), axis=vector(0, -1, 0), shaftwidth=0.1, color = color.black)
label( pos=vector(eq_pos.x, 3, 0), text='平衡位置' )

my_graph = graph(title = "", xtitle = "t", ytitle = "x")
my_curve1 = gdots(graph = my_graph, color = color.blue)

eq_pos = vector(9,0,0)
t = 0
dt = 0.05
frict_const = 0.25
g_acc = vector(10,0,0)

while (t < 100):
	rate(100)

	my_curve1.plot(pos = (t, mass_obj.pos.x - eq_pos.x))

	sign = 0
	if mass_obj.velocity.x == 0:
		sign = 0
	else:
		sign =  -(mass_obj.velocity.x)/abs(mass_obj.velocity.x)

	acc = (eq_pos - mass_obj.pos)* spring.constant / mass_obj.mass + sign * frict_const * g_acc
	mass_obj.velocity = mass_obj.velocity + acc * dt
	mass_obj.pos = mass_obj.pos + mass_obj.velocity * dt
	spring.axis = mass_obj.pos - spring.pos
	t = t + dt
```

