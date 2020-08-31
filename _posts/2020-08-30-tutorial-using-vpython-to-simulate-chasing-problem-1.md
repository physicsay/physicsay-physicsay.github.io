---
title: VPython 教程 - 猎犬追狐狸 (一)
url: tutorial-using-vpython-to-simulate-chasing-problem-1
date: 2020-08-30 20:35:27
tags:
- VPython
- 模拟
- 物理竞赛
categories:  VPython
description: 用 VPython 模拟猎犬追狐狸的经典竞赛题，让追击问题变得更加直观！
---

## 0. 竞赛题

以下是《中学奥林匹克竞赛物理教程-力学篇》中 2-17 题：

一只狐狸以不变的速度 $v_1$ 沿直线 AB 奔逃，一只猎犬以不变的速率 $v_2$ 追击，其运动方向始终对准狐狸。某时刻狐狸在 F 处，猎犬在 D 处， $FD \perp AB$， 已知 $FD = L$，如图所示。试求此时猎犬的加速度大小。

<img src='/assets/images/2020-08-30-tutorial-using-vpython-to-simulate-chasing-problem-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 1. 如何模拟？

很多教程对该追击问题都有具体分析，本文暂不赘述。本文主要用 Python 模拟该追击问题。

首先建立直角坐标系 $O-xy$，$x$ 轴水平向右，为方便起见 $y$ 轴向下(猎犬的纵坐标始终为正数)。

在某时刻狐狸在 F 处，猎犬在 D 处， $FD \perp AB$，假设为运动的初始时刻 $t = 0$。容易发现，影响猎犬追上狐狸的因素主要有：猎犬的速度、狐狸的速度 和 两者初始距离。

在这个追击模型中，假设猎犬、狐狸的运动速率是恒定的(即不考虑体力消耗)，不考虑地面不平整、有其他的追击物体等因素。

使用欧拉法对两者的运动进行模拟 —— 取极短时间内，考察物体的加速度、速度和位置的变化。猎犬运动方向始终对准狐狸，即可以找到猎犬和狐狸的位置坐标，得到单位方向矢量，再将单位方向矢量乘以猎犬的速率，即得到猎犬的瞬时速度。

<img src='/assets/images/2020-08-30-tutorial-using-vpython-to-simulate-chasing-problem-1/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

## 2. Python 代码

下面给出 Python 代码，运行该代码时需要安装 VPython 依赖库。

```python
# -*- coding: utf-8 -*-
# @Author: jiap
# @Wechat:  物理说(Physicsay)
# @Website: www.physicsay.com

from vpython import *

canvas(width= 1000, height = 1000, center = vector(10,0,0), background = color.white)

# initial setttings

DogVelocity = 8

FoxVelocity = 10

FoxPos_y = 10

# params
dt = 0.0002
t = 0

x_axis = arrow(pos = vector(0, 0, 0), axis = vector(FoxPos_y + 5, 0, 0), shaftwidth = 0.02, color = color.black)
y_axis = arrow(pos = vector(0, 0, 0), axis = vector(0, FoxPos_y + 5, 0), shaftwidth = 0.02, color = color.black)

fox = sphere(pos = vec(0, FoxPos_y, 0), radius = 0.5, color = color.red, make_trail = True)
dog = sphere(pos = vec(0, 0, 0), radius = 0.5, color = color.blue, make_trail = True)

while True:
	rate(400)

	dog.pos += DogVelocity * norm(fox.pos - dog.pos) * dt
	fox.pos.x += FoxVelocity * dt
	t += dt
	if mag(fox.pos - dog.pos) <= 0.01:
		break
print('Time elapsed', t)

```

可以改变代码中猎狗速度(`DogVelocity`)，狐狸速度(`FoxVelocity`)，猎狗与狐狸初始间距(`FoxPos_y`)，从而得到不同的结果。

需要讲解的部分：

> 1. 这里 $x$，$y$ 轴的设置是根据猎犬和狐狸速度来设置的；  
> 2. 当两者间距小于 0.01 时为追上，并输出追击时间；  
> 3. 如果猎犬的速度小于狐狸速度(永远追不上)，则该程序会一直运行。  


## 3. 思考
有以下几个思考题，可以考虑下：
1. 当猎犬和狐狸的速率相同时，能否追上，为什么？    
2. 猎犬追上狐狸的时间和猎犬的速率有什么关系？  
3. 如果狐狸做的匀速圆周运动，猎犬的轨迹是怎样的？  


---
参考  
1. 许冬保. 猎犬追狐狸试题的多视角分析[J]. 中学物理. 49-50(30), 2012  
2. 王鹤然, 王俊, 猎犬追狐狸试题中追击时间问题的严格求解[J].  中学物理. 62-63(33), 2015  
3. 俞军卿, 钱卓琳, 朱国强. 猎犬追狐狸问题的求解与MATLAB模拟[J]. 物理教学, 63-65(3), 2020  
4. [一道经典竞赛题——猎狗追狐狸的vpython动画](https://mp.weixin.qq.com/s/uCb72WG5eZdlNum8OBNurw)