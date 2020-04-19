---
title: 用 Vpython 模拟单摆运动 (三)
url: pendulum-simulation-3
date: 2020-04-18 16:31:26
tags:
- Vpython
- 可视化
categories: mechanics
description: 来考察下单摆运动动能和势能的转换。
---

我们用 VPython 模拟了单摆的运动，也探究了影响单摆周期的因素，下面来看一下单摆运动中的动能和势能之间的相互转换。

## 1. 动能势能转换

假定摆线长度为 10， 初始释放角度为 10，绘制动能、势能和机械能的相互转换。

<img src='/assets/images/2020-04-18-pendulum-simulation-3/Ekp.png' style='zoom:40%; margin: 0 auto; display: block;'/>

从图中可以看出，动能和势能相互转换，机械能保持不变。

## 2. 代码

下面给出了相应 Vpython 代码：

```python
from vpython import *
## background 
canvas(width= 800, height = 600, center = vector(0,0,0), background = color.white)

g = 10;  H = 11
l = 10; theta = 10; vel = 0

ball = sphere(pos = vector(l * sin(theta / 180 * pi), (H - l * cos(theta / 180 * pi)), 0), radius = 0.5, color = color.green, mass = 1)
pivot = vector(0, H, 0)
roof = box(pos = pivot, size = vector(10, 0.5, 10))
rod = cylinder(pos = pivot, axis = ball.pos - pivot, radius = 0.1, color= color.red)

t = 0
dt = 0.01

my_graph = graph(title = "", xtitle = "t", ytitle = "E")
my_curve1 = gcurve(graph = my_graph, color = color.green, label = '动能')
my_curve2 = gcurve(graph = my_graph, color = color.blue, label = '势能')
my_curve3 = gcurve(graph = my_graph, color = color.red, label = '机械能')


while (t < 1000):
	rate(50)

	my_curve1.plot(t, 1/2 * ball.mass * (l * vel)**2)
	my_curve2.plot(t, ball.mass * g * (l - l * cos(theta / 180 * pi)))
	my_curve3.plot(t, 1/2 * ball.mass * (l * vel)**2 + ball.mass * g * (l - l * cos(theta / 180 * pi)))

	acc = - g / l * sin(theta / 180 * pi)

	vel = vel + acc * dt

	theta = theta + vel * 180/pi * dt

	ball.pos = vector(l * sin(theta / 180 * pi), (H - l * cos(theta / 180 * pi)), 0)
	rod.axis = ball.pos - pivot

	t = t + dt
```



## 思考：
1. 之前研究的都是小角度下的单摆周期，那么如果大角度下单摆的周期会有什么变化呢？
