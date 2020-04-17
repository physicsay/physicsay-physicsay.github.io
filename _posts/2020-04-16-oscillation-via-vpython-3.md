---
title: 用 Vpython 模拟弹簧振子的简谐振动 (三)
url: oscillation-via-vpython-3
date: 2020-04-16 15:47:14
tags:
- 可视化
- Vpython
- 简谐振动
categories: mechanics 
description: 来研究下弹簧振子动能和势能的变化情况。
---

## 1. 弹簧振子的动能和势能变化

弹簧振子做的是简谐运动，可以将其作为整体分析其动能和势能的变化。

假定滑块质量为 1，弹簧劲度系数为 1，平衡位置在 $x = 9$，从 $x = 12$ 处静止释放。考察弹簧振子的动能和势能：

动能 $E_k = \frac{1}{2} mv^2$  
势能 $E_p = \frac{1}{2} k(\Delta x)^2$

绘制动能、势能 和 机械能的变化关系，如下图所示。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-3/epk.png' style='zoom:40%; margin: 0 auto; display: block;'/>

可以发现，刚运动时，物体动能为 0， 势能处于最大；当势能为 0（弹簧振子处于平衡位置），动能最大。

## 2. 动能、势能的周期？

单看动能和势能的周期，是有难度的。这里将物体的位移一并展示在下图，这样更能直观显示。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-3/period.png' style='zoom:40%; margin: 0 auto; display: block;'/>

图中发现，动能和势能的周期，均为物体运动周期的一半（想想物理过程，就明白了）


### 2.3 代码

下面是求解弹簧振子周期的代码。

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

eq_pos = vector(9,0,0)


eq = pointer = arrow(pos = vector(eq_pos.x, 2, 0), axis=vector(0, -1, 0), shaftwidth=0.1, color = color.black)
label( pos=vector(eq_pos.x, 3, 0), text='平衡位置' )

my_graph = graph(title = "", xtitle = "t", ytitle = "x")

my_curve1 = gdots(graph = my_graph, color = color.blue, label = '动能')
my_curve2 = gdots(graph = my_graph, color = color.red, label = '势能')
# my_curve3 = gdots(graph = my_graph, color = color.black, label = '动能 + 势能')
my_curve4 = gdots(graph = my_graph, color = color.black, label = 'x-t')

t = 0
dt = 0.01

while (t < 50):
	rate(100)

	my_curve1.plot(pos = (t, 1/2 * mass_obj.mass * mass_obj.velocity.x ** 2))
	my_curve2.plot(pos = (t, 1/2 * spring.constant * (eq_pos.x - mass_obj.pos.x) ** 2))
	# my_curve3.plot(pos = (t, 1/2 * spring.constant * (eq_pos.x - mass_obj.pos.x) ** 2 +  1/2 * mass_obj.mass * mass_obj.velocity.x ** 2))
	my_curve4.plot(pos = (t, mass_obj.pos.x - eq.pos.x))

	acc = (eq_pos - mass_obj.pos)* spring.constant / mass_obj.mass
	mass_obj.velocity = mass_obj.velocity + acc * dt
	mass_obj.pos = mass_obj.pos + mass_obj.velocity * dt
	spring.axis = mass_obj.pos - spring.pos
	t = t + dt
```

## 思考：
1. 如果平面有摩擦，滑块的运动是怎样的？
