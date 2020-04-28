---
title: 用 VPython 模拟弹簧振子的简谐振动 (二)
url: oscillation-via-vpython-2
date: 2020-04-16 15:47:14
tags:
- 可视化
- VPython
- 简谐振动
categories: mechanics 
description: 在弹簧振子的运动中，如何才能改变其运动的振幅和周期？
---

## 1. 简谐运动位置、速度、加速度关系

上文给出了弹簧振子的运动图。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-2/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

(此处有图，加载较慢，请耐心等待)

我们来看下弹簧振子的 $x-t$，$v-t$，$a-t$ 关系图。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-2/xva.png' style='zoom:40%; margin: 0 auto; display: block;'/>

首先分析 $x-t$ 图，在平衡位置附近，轨迹最稀疏（BD 位置）；在最大位移处，轨迹点最为密集（AC 处）。再分析 $v-t$，$a-t$ 图：在平衡位置处，小球运动的速度最大，加速度为 0 ；在最大位移处，小球运动的速度为 0， 加速度最大。

## 2. 如何改变振幅和周期

### 2.1 改变滑块释放的初始位置

在程序中，我们改变滑块的初始位置不同，保持其他条件相同。

> 假设弹簧的劲度系数为 1， 滑块质量为 1， 平衡位置在 $x = 9$， 滑块初始位置为 $x = 12$ 和 $x = 15$。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-2/amp.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

画出滑块位置随着时间的变化曲线：

<img src='/assets/images/2020-04-16-oscillation-via-vpython-2/amp_t.png' style='zoom:40%; margin: 0 auto; display: block;'/>

滑块初始位置 $x = 12$ 对应上图 $x_1-t$。

在最远距离处静止释放滑块，要增加弹簧振子的振幅，只需要使 距平衡位置的距离变大。

### 2.2 改变弹簧的劲度系数

令一根弹簧的劲度系数为 1， 另一根的劲度系数为 2，滑块平衡位置在 $x = 9$， 滑块初始位置为 $x = 12$， 来考察弹簧振子的运动。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-2/spring.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

画出滑块位置随着时间的变化曲线：

<img src='/assets/images/2020-04-16-oscillation-via-vpython-2/spring_t.png' style='zoom:40%; margin: 0 auto; display: block;'/>

劲度系数为 1 的滑块运动对应上图 $x_1-t$。

可以看出，提高弹簧的劲度系数，周期会变短。


### 2.3 改变滑块的质量

令第一个滑块的质量为 1， 第二个滑块质量为 2，滑块平衡位置在 $x = 9$， 滑块初始位置为 $x = 12$， 来考察弹簧振子的运动。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-2/mass.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

画出滑块位置随着时间的变化曲线：

<img src='/assets/images/2020-04-16-oscillation-via-vpython-2/mass_t.png' style='zoom:40%; margin: 0 auto; display: block;'/>

质量为 1 的滑块运动对应上图 $x_1-t$。

可以看出，增加滑块质量，周期会变长。

### 2.4 总结

从以上模拟中可以发现：提高弹窗的劲度系数，减小滑块质量，弹簧振子的周期均会变短。

通过求解弹簧振子的周期，有如下公式：

$$
T = 2\pi\sqrt{\frac{m}{k}}
$$

## 3. 代码

```python
# -*- coding: utf-8 -*-
# @Author: jiap
# @Wechat: 物理说 (Physicsay)

from vpython import *

mass_obj1 = box(pos = vector(12,0,0), velocity = vector(0,0,0), size = vector(1,1,1), color = color.blue, mass = 1)
mass_obj2 = box(pos = vector(15,-2,0), velocity = vector(0,0,0), size = vector(1,1,1), color = color.black, mass = 1)

pivot1 = vector(0, 0, 0)
pivot2 = vector(0, -2, 0)
spring1 = helix(pos = pivot1, axis = mass_obj1.pos - pivot1, radius=0.4, constant = 1, thickness = 0.1, coils = 15, color =  color.red)
spring2 = helix(pos = pivot2, axis = mass_obj2.pos - pivot2, radius=0.4, constant = 1, thickness = 0.1, coils = 15, color =  color.red)

eq_pos1 = vector(9,0,0)
eq_pos2 = vector(9,-2,0)

floor1 = box(pos=vector(7.5,-0.5,0), size=vector(15, 0.1, 4), color = color.green)
wall1 = box(pos=vector(0,0.5,0), size=vector(0.1, 2, 4), color = color.green)

floor2 = box(pos=vector(7.5,-2.5,0), size=vector(15, 0.1, 4), color = color.green)
wall2 = box(pos=vector(0,-1.5,0), size=vector(0.1, 2, 4), color = color.green)

eq = arrow(pos = vector(eq_pos1.x, 2, 0), axis=vector(0, -1, 0), shaftwidth=0.1, color = color.black)
label( pos=vector(eq_pos1.x, 3, 0), text='平衡位置' )

my_graph = graph(title = "振幅", xtitle = "t", ytitle = "x")

my_curve1 = gdots(graph = my_graph, color = color.blue, label = 'x1-t')
my_curve2 = gdots(graph = my_graph, color = color.red, label = 'x2-t')

t = 0
dt = 0.1

while (t < 50):
	rate(100)
	acc1 = (eq_pos1 - mass_obj1.pos)* spring1.constant / mass_obj1.mass
	mass_obj1.velocity = mass_obj1.velocity + acc1 * dt
	mass_obj1.pos = mass_obj1.pos + mass_obj1.velocity * dt
	spring1.axis = mass_obj1.pos - spring1.pos

	acc2 = (eq_pos2 - mass_obj2.pos)* spring2.constant / mass_obj2.mass
	mass_obj2.velocity = mass_obj2.velocity + acc2 * dt
	mass_obj2.pos = mass_obj2.pos + mass_obj2.velocity * dt
	spring2.axis = mass_obj2.pos - spring2.pos

	t = t + dt
	my_curve1.plot(pos = (t, mass_obj1.pos.x - eq_pos1.x))
	my_curve2.plot(pos = (t, mass_obj2.pos.x - eq_pos2.x))
```

> 注：1. 代码给出了两个弹簧振子的不同初始位置的运动，文中提及的改变滑块质量和弹簧劲度系数的代码，只需在这基础上稍作修改即可，再次不再赘述。
> 注：2. 改变弹簧振子的相位并不会改变弹簧振子运动的振幅和周期，本文并未讨论相位。


## 思考：
1. 整个系统动能和势能之间是如何转换的？  
2. 如果平面有摩擦，滑块的运动是怎样的？  


