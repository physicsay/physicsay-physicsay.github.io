---
title: 用 Vpython 模拟弹簧振子的简谐振动 (一)
url: oscillation-via-vpython-1
date: 2020-04-16 15:47:14
tags:
- 可视化
- Vpython
- 简谐振动
categories: mechanics 
description: 用 Vpython 来模拟弹簧振子的简谐振动
---

## 1. 简谐振动概念

简谐振动是最简单最基本的振动。首先明确几个概念：
1. 质点在某位置所受的力（或沿运动方向受的力）等于零，则此位置称为**平衡位置**。
2. 若作用于质点的力总与质点相对于平衡位置的位移成正比，且指向平衡位置，则此作用力称线性**回复力**。

> 质点在线性回复力作用下围绕平衡位置的运动叫做简谐振动。

弹簧振子和小角度的单摆运动，都是简谐运动。

本文用 VPython 模拟理想弹簧振子模型（即不考虑阻力、弹簧质量等因素），如图所示，小球受到的弹力是始终指向平衡位置，并且大小与弹簧的伸长量成正比，小球所做的运动是简谐运动。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

根据牛顿第二定律，写出滑块的运动方程。

$$
m \frac{d^2x}{dt^2} = -kx
$$

可以求解出该方程的解为：$x = Asin(\omega t + \phi)$

值得注意的是，弹簧振子的周期 $T$ 和 滑块质量 $m$ 及 弹簧的劲度系数 $k$ 有关，具体为：

$$
\omega^2 = \frac{k}{m}
$$ 


## 2. VPython 模拟

VPython 是一个基于 Python 开发的可视化软件库，可以方便模拟多种物理过程。本文使用了 VPython 库进行模拟弹簧斜振子的运动。

### 2.1 前置工作

在计算机模拟中，物体下一时刻的状态是通过上一时刻的状态确定的。因此，有以下的“微元”过程：

$$
a(t + dt) = -\frac{k}{m} \cdot x(t) \\
v(t + dt) = v(t) + a(t) \cdot dt   \\
x(t + dt) = x(t) + v(t) \cdot dt  \\
$$  

下一时刻 $t + dt$ 的加速度是通过当前位置 $x(t)$ 确定的，而确定了加速度，就可以计算出下一时刻的速度和位移。

### 2.2 结果

下面给出了弹簧振子的运动图。

<img src='/assets/images/2020-04-16-oscillation-via-vpython-1/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

(此处有图，加载较慢，请耐心等待)

### 2.3 代码

下面是弹簧振子模拟的主要代码。

> 要运行该代码，需要安装 Python 和 VPython 的库。

```python
# -*- coding: utf-8 -*-
# @Author: jiap
# @Wechat: 物理说 (Physicsay)
# @Website: www.physicsay.com

from vpython import *

mass_obj = box(pos = vector(12,0,0), velocity = vector(0,0,0), size = vector(1,1,1), color = color.blue, mass = 1)
pivot = vector(0, 0, 0)
spring = helix(pos = pivot, axis = mass_obj.pos - pivot, radius=0.4, constant = 1, thickness = 0.1, coils = 15, color =  color.red)
floor = box(pos=vector(7.5,-0.5,0), size=vector(15, 0.1, 4), color = color.green)
wall = box(pos=vector(0,0.5,0), size=vector(0.1, 2, 4), color = color.green)

eq_pos = vector(9,0,0)

t = 0
dt = 0.01

while (t < 50):
	rate(100)
	acc = (eq_pos - mass_obj.pos)* spring.constant / mass_obj.mass
	mass_obj.velocity = mass_obj.velocity + acc * dt
	mass_obj.pos = mass_obj.pos + mass_obj.velocity * dt
	spring.axis = mass_obj.pos - spring.pos
	t = t + dt
```

## 思考：
1. 在这个模型中，改变什么因素，才能改变弹簧振子的振幅和周期？  
2. 整个系统动能和势能之前是如何转换的？  
3. 如果平面有摩擦，滑块的运动是怎样的？  
