---
title:  粒子在不均匀磁场中运动 (一) —— 以 2020 海淀高三选择题为例
url: motion_in_inhomogeneous_magnetic_field
date: 2020-05-08 16:24:42
tags:
- 可视化
- 磁场
categories:  electromagnetism
description:  通电导线产生的磁场并不是均匀的，粒子在不均匀磁场中是如何运动的呢？
---

## 0. 模拟题

我们来看下 2020 海淀高三年级第二学期阶段性测试的第九题：

**在一通有恒定电流的长直导线的右侧，有一带正电的粒子以初速度 $v_0$ 沿平行于导线的方向射出。若粒子所受重力及空气阻力均可忽略不计，现用虚线表示粒子的运动轨迹，虚线上某点所画有向线段的长度和方向表示粒子经过该点时的速度大小和方向，则如图所示的图景中可能正确的是 (    )**

<img src='/assets/images/2020-05-08-motion-in-inhomogeneous-magnetic-field-1/fig2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 1. 解析

首先回想长直导线的磁场分布，越靠近导线，磁感应强度越强，根据右手定则，长直导线右侧的磁场垂直于纸面向里。

再根据左手定则，判断正电粒子受到的洛伦兹力向左，且运动轨迹从速度和合力夹角中穿过，可以排除 C、D 选项。

题中 A、B 选项的区别在于速度会不会变化，我们看到洛伦兹力始终与速度垂直，不改变速度的大小，只改变速度方向，因此答案选 B。

> 注意这里粒子运动的半径是不断减小的：因为越靠近长直导线，磁感应强度越大，根据粒子运动的半径公式 $R = mv / (qB)$，运动半径会不断减小。

> 本题考查的是粒子在磁场中只受洛伦兹力时，粒子的速度大小不变。

## 2. 变题

我们再看下 2019 年南京盐城高三一模的选择题：

**如图所示，水平导线中有电流 $I$ 通过，导线正下方电子的初速度方向与电流 $I$ 的方向相同，均平行于纸面水平向左。下列四幅图是描述电子运动轨迹的示意图，其中正确的是 (    )**

<img src='/assets/images/2020-05-08-motion-in-inhomogeneous-magnetic-field-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 2.1 分析

由安培定则可知，长直导线下方磁场为垂直直面向外，再根据右手定则，电子受到的洛伦兹力向下，电子向下偏转，可以排除 B、D 选项。

长直导线中电流产生的磁场以导线为中心向四周发散，离导线越远，磁感应强度越小，可以得到电子在磁场中的偏转半径为 $R = mv/(eB)$，电子运动半径越来越大，C 选项中的半径不变，C 错。 A 对。

> 本题考查的是运动半径与磁场的关系。

有同学可能会疑问，A、C 选项图差不多，粒子的运动到底是怎么样的呢？粒子好像会离长直导线越来越远？不会偏转？那如果电流很大呢，产生的磁场很强，粒子又是如何运动的呢？

下面我们就用程序来模拟这样的一个运动过程。


## 3. 模拟

用 VPython 模拟长直导线下粒子的运动，以 2019 年南京盐城高三一模选择题为例。

取电流为 0.1 mA，电子位于长直导线下方 10 cm 处，电子向左运动速度为 5 m/s，模拟出粒子的运动轨迹，如下图所示：

<img src='/assets/images/2020-05-08-motion-in-inhomogeneous-magnetic-field-1/motion.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 当速度相对较大，磁场产生的洛伦兹力对速度方向改变的较慢 (相对水平运动的速度)，因此电子会离长直导线越来越远。

那将速度变小一些？在程序中将速度调整为 1 m/s，来看一下粒子的运动轨迹，如下图所示：

<img src='/assets/images/2020-05-08-motion-in-inhomogeneous-magnetic-field-1/motion2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 在上图中，随着粒子远离通电长直导线，粒子运动的半径在增大。

保持速度不变，将时间延长些，看看粒子的运动轨迹是怎么样的呢？如下图所示：

<img src='/assets/images/2020-05-08-motion-in-inhomogeneous-magnetic-field-1/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

(此处有动图，加载较慢，也可看下图)

<img src='/assets/images/2020-05-08-motion-in-inhomogeneous-magnetic-field-1/motion3.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 电子做螺旋运动，且靠近导线和远离导线的运动半径是不同的。

这里，当然可以改变长直导线中通的电流大小，也能影响电子的运动轨迹，在此不再赘述。


