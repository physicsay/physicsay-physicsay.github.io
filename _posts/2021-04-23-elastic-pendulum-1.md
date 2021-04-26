---
title:  弹簧摆的 Python 和 Matlab 模拟 (一) 
url: elastic-pendulum-1
date: 2021-04-23 14:14:27
tags:
- VPython
- Matlab
categories:  Simulation
description:  用 VPython 和 Matlab 模拟弹簧摆的运动。
---

## 0. 弹簧摆介绍

悬挂一个弹簧，弹簧末端系一质量为 $m$ 的物块，这就构成了一个弹簧摆。弹簧摆的运动不同于单摆，在运动过程中，弹簧的弹力会发生变化，从而会影响摆线的长度，解析弹簧摆的运动会更复杂。

## 1. 理论分析

对弹簧摆进行受力分析，当摆球处于 $P(x,y)$ 位置时，受到弹力 $T$ 和重力 $mg$ 的共同作用，而弹力 $T$ 可以用线性回复力表示 $T = kx$，其中 $k$ 是劲度系数。

<img src='/assets/images/2021-04-23-elastic-pendulum-1/elastic_diagram_1.png' style='zoom:40%; margin: 0 auto; display: block;'/>

由于摆球是在二维平面内运动，因此存在水平方向和竖直方向的运动。建立水平向右为 $x$ 轴，竖直向上为 $y$ 轴，将弹簧弹力 $T$ 分解到 $x$、$y$ 轴。

根据牛顿第二定律写出 $x$、$y$ 轴的运动方程，如下：

$$
m\ddot{x} = - k(\sqrt{x^2 + y^2} - L)sin\theta 
$$

$$
m\ddot{y} = mg - k(\sqrt{x^2 + y^2} - L)cos\theta 
$$

> 注意：$L$ 为弹簧原长，在某点 $P(x,y)$ 时，弹簧长度为 $\sqrt{x^2 + y^2}$，弹力为 $T = k(\sqrt{x^2 + y^2}-L)$。

上述是一个微分方程组，难以求得精确解，本文使用 Matlab 和 VPython 对弹簧摆的运动模拟，并对几种情况进行讨论。

## 2. Matlab 模拟

上式是微分方程组，使用 Matlab 中的 `ode45` 命令对其进行模拟：

假设弹簧的原长为 0.5 $m$，劲度系数 $k = 100$，悬挂小球质量为 $1 kg$。

(1) 当弹簧处于原长，并在水平方向无初速度释放，弹簧摆的轨迹如下图所示。

<img src='/assets/images/2021-04-23-elastic-pendulum-1/simulation-1.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

(2) 当弹簧处于原长，并以向下的速度 $v = 2 m/s$ 的初速度释放，弹簧摆的轨迹如下图所示。

<img src='/assets/images/2021-04-23-elastic-pendulum-1/simulation-2.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

> 在给定向下的初速度，因此在弹簧摆运动时，可能会超过 $O$ 点所在的水平线。

(3) 当弹簧摆在竖直方向处于平衡位置，即小球此时所处位置为 $0.6m$ ，并以向左的速度 $v = 2 m/s$ 释放，弹簧摆的轨迹如下图所示。
<img src='/assets/images/2021-04-23-elastic-pendulum-1/simulation-3.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

## 3. Python 模拟

用 Python 模拟弹簧摆的运动情况， 当弹簧处于原长，并在水平方向无初速度释放，弹簧参数不变，弹簧摆的轨迹如下图所示。

<img src='/assets/images/2021-04-23-elastic-pendulum-1/python-1.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

> 其余情况的模拟暂未给出，修改 Python 程序中的初始值，给定初始位置和初速度，即可模拟。

---

## 思考

本文假定弹簧摆是在二维平面内运动，那弹簧摆在三维平面的运动又是如何的呢？

---
参考：
1. [用 Vpython 模拟单摆运动 (一)](https://mp.weixin.qq.com/s/sYRHwFZewzn3eVqQDnIVbg)  
2. [用 Vpython 模拟单摆运动 (二)](https://mp.weixin.qq.com/s/Sz44EA2UiXOcCHgVC27Hew)  
3. [用 Vpython 模拟单摆运动 (三)](https://mp.weixin.qq.com/s/JL-3XTWs_FaKi-eSeKVOfA)  
4. [用 Vpython 模拟单摆运动 (四)](https://mp.weixin.qq.com/s/PEAXdbGziW_fTOdSzfqAZw)  
