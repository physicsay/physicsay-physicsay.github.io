---
title: VPython 教程 - 猎犬追狐狸 (二)
url: tutorial-using-vpython-to-simulate-chasing-problem-2
date: 2020-10-01 20:38:57
tags:
- VPython
- 模拟
- 物理竞赛
categories: VPython
description: 用 VPython 模拟猎犬追做圆周运动的狐狸，情况又会如何呢？
---

之前以奥赛题探究了猎犬追击狐狸的问题：狐狸向东做匀速直线运动，而猎犬的运动方向始终对准狐狸。给出了 VPython 模拟程序[1]，也给出了如何建立数学模型研究这一过程[2-3]，文章[1,3] 给出了思考题：如果狐狸做的匀速圆周运动，猎犬的轨迹是怎样的？

<img src='/assets/images/2020-10-01-tutorial-using-vpython-to-simulate-chasing-problem-2/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 1. 如何模拟？

用 Python 来模拟该追击问题。首先来分析这个程序的基本思想——欧拉法。

取极短时间内，考察物体的加速度、速度和位置的变化。猎犬运动方向始终对准狐狸，即可以找到猎犬和狐狸的位置坐标，得到单位方向矢量，再将单位方向矢量乘以猎犬的速率，即得到猎犬的瞬时速度。

<img src='/assets/images/2020-10-01-tutorial-using-vpython-to-simulate-chasing-problem-2/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

由于狐狸运动的是匀速圆周运动，因此引入角度来表示狐狸的位置。假定 $t = 0$ 时刻狐狸在正东方向(上图所示位置)，经过 $\Delta t$ 时间后，狐狸运动的弧长为 $v_f \cdot \Delta t$，假设圆周运动的半径为 $l = 1$，通过弧长公式 $l\cdot \theta = v \cdot \Delta t$，则可以计算出狐狸运动 $\Delta t$ 时间后偏转的角度 $\theta = l \cdot \Delta t$。


通过迭代，可以计算出每次狐狸的位置坐标，而狗的方向始终是朝着狐狸的，用矢量的方法即可计算出运动方向。

## 2. Python 代码

下面给出 Python 代码，运行该代码时需要安装 VPython 依赖库。

```python
# -*- coding: utf-8 -*-
# @Author: jiap
# @Wechat:  物理说(Physicsay)
# @Website: www.physicsay.com

from vpython import * 

canvas(width= 1000, height = 1000, center = vector(0,0,0), background = color.white)

DogVelocity = 8
RabbitVelocity = 6

ring(pos=vector(0,0,0), axis = vector(0,0,1), radius = 1, thickness=0.01, color = color.black)

dog = sphere(pos = vector(0, 0, 0), radius = 0.05, color = color.red, make_trail = True)
rabbit = sphere(pos = vector(1, 0, 0), radius = 0.05, color = color.green, make_trail = True)

dt = 0.00005
theta = 0

while True:
	rate(400)
	d_theta = RabbitVelocity * dt 
	theta += d_theta

	rabbit.pos = vector(cos(theta), sin(theta), 0)
	
	dog_direct = (rabbit.pos - dog.pos)/mag(rabbit.pos - dog.pos)
	dog.pos += dog_direct * DogVelocity * dt
	if mag(dog.pos - rabbit.pos) < 0.001:
		break
```

可以改变代码中猎狗速度(`DogVelocity`)，狐狸速度(`FoxVelocity`)，从而得到不同的结果。

需要讲解的部分：

> 1. 这里 $x$，$y$ 轴的长度是根据猎犬和狐狸速度来设置的；  
> 2. 如果猎犬的速度小于狐狸速度(永远追不上)，则该程序会一直运行。  

## 3. 思考  
1. 如果猎犬追狐狸有预判，情况又该如何？如何修改代码？

---
参考  
1. [VPython 教程 - 猎犬追狐狸 (一)](https://mp.weixin.qq.com/s/xXJmeayVNiGRnTNh0POiig)
2. [建模教程 - 猎犬追狐狸 (一)](https://mp.weixin.qq.com/s/ply-8g2e9G91ZabFb9oFAg)
3. [建模教程 - 猎犬追狐狸 (二)](https://mp.weixin.qq.com/s/0SLWp8K3SnrztYK2ILc8UQ)

