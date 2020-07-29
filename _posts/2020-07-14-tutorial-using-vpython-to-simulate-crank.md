---
title:  VPython 教程 - 模拟曲柄连杆运动
url: tutorial-using-vpython-to-simulate-crank
date: 2020-07-14 14:40:50
tags:
- VPython
- 模拟
categories:  VPython
description: 用 VPython 模拟曲柄连杆的运动。
---


## 1. 曲柄连杆运动分析

对曲柄连杆的模型进行简化，杆 OB 绕着 O 点旋转，带动 AB 杆运动，而 A 点只能在 $x$ 方向运动。

<img src='/assets/images/2020-07-14-tutorial-using-vpython-to-simulate-crank/analysis.png' style='zoom:40%; margin: 0 auto; display: block;'/>

假定 OB 的距离为 $r_1$， OA 的距离为 $r_2$，转过的角度为 $\alpha$，则根据余弦定理，可以写出

$$
r_2^2 = r_1^2 + OA^2 - 2 \cdot OA^2 \cdot r_1 cos\alpha
$$

可以解出

$$
OA = r_1cos\alpha + \sqrt{r_1^2 cos^2\alpha - (r_1^2 - r_2^2)}
$$

而 OA 的长度就是 A 点的横坐标。

下面是曲柄连杆的动画效果：

<img src='/assets/images/2020-07-14-tutorial-using-vpython-to-simulate-crank/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

## 2. Python 代码

下面给出 Python 代码，运行该代码时需要安装 VPython 依赖库。可以更改代码中连杆`r1`、`r2` 和 转速 `n`的值(注意：`r1 < r2`)

```python
# -*- coding: utf-8 -*-
# @Author: jiap
# @Wechat:  物理说(Physicsay)
# @Website: www.physicsay.com

# Python 模拟曲柄连杆模型

from vpython import *
canvas(width = 1200, height = 800, center = vector(0, 0, 0), background = color.white)

r1 = 1; r2 = 2;
n = 30 # r/min

# initial condition 
dt = 0.01
theta0 = 10
omega = n * 6

# initial shape
point1 = sphere(pos = vector(0, 0, 0), radius = 0.06, color = color.red)
point2 = sphere(pos = vector(r1 * cos(theta0 * pi / 180), r1 * sin(theta0* pi / 180), 0), radius = 0.06, color = color.red)
point3 = sphere(pos = vector(r2 * cos(asin(r1 * sin(theta0* pi / 180)/ r2)) + r1 * cos(theta0* pi / 180), 0, 0), radius = 0.06, color = color.red)
trail = ring(pos = vector(0, 0, 0), axis = vector(0, 0, 1), radius = r1, thickness = 0.01, color = color.blue)
x_axis = arrow(pos=vector(-2, 0, 0), axis=vector(6, 0, 0), shaftwidth=0.02, color = color.black)
y_axis = arrow(pos=vector(0, -2, 0), axis=vector(0, 4, 0), shaftwidth=0.02, color = color.black)
rod1 = cylinder(pos = vector(0, 0, 0), axis = vector(r1 * cos(theta0 * pi / 180), r1 * sin(theta0* pi / 180), 0), radius = 0.02, color = color.black)
rod2 = cylinder(pos = vector(r1 * cos(theta0 * pi / 180), r1 * sin(theta0* pi / 180), 0), axis = vector(r2 * cos(asin(r1 * sin(theta0* pi / 180)/ r2)) + r1 * cos(theta0* pi / 180), 0, 0) - vector(r1 * cos(theta0 * pi / 180), r1 * sin(theta0* pi / 180), 0), radius = 0.02, color = color.black)

piston = box(pos= point3.pos, length = 0.2, height=0.2, width=0.1, color = color.green)
curve1 = curve(pos = [vector(r2-r1, 0.11, 0), vector(r1+r2, 0.11, 0)], color = color.black)
curve2 = curve(pos = [vector(r2-r1, -0.11, 0), vector(r1+r2, -0.11, 0)], color = color.black)
label(pos= vector(3, -1, 0), text = '物理说 (Physicsay)',color = color.black)

theta = theta0
for i in range(10000):
	rate(50)
	point2.pos = vector(r1 * cos(theta * pi / 180), r1 * sin(theta * pi / 180), 0)
	point3.pos = vector(r2 * cos(asin(r1 * sin(theta * pi / 180)/ r2)) + r1 * cos(theta * pi / 180), 0, 0)
	point3.pos = vector(r1 * cos(theta * pi / 180) + sqrt(r1 ** 2 * (cos(theta * pi / 180)) **2 - (r1 ** 2 - r2 ** 2)), 0, 0)
	rod1.axis = vector(r1 * cos(theta * pi / 180), r1 * sin(theta* pi / 180), 0)
	rod2.pos = vector(r1 * cos(theta * pi / 180), r1 * sin(theta* pi / 180), 0)
	rod2.axis = vector(r1 * cos(theta * pi / 180) + sqrt(r1 ** 2 * (cos(theta * pi / 180)) **2 - (r1 ** 2 - r2 ** 2)), 0, 0) - vector(r1 * cos(theta * pi / 180), r1 * sin(theta * pi / 180), 0)
	piston.pos = vector(r1 * cos(theta * pi / 180) + sqrt(r1 ** 2 * (cos(theta * pi / 180)) **2 - (r1 ** 2 - r2 ** 2)), 0, 0)

	theta += omega * dt

```


---
参考文献：

[1] 赵春平,苗志锋. 基于VPython的机构运动仿真研究及实现[J]. 广西轻工业. 2007(03)
