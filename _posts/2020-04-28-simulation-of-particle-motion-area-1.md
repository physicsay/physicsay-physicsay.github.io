---
title: 模拟带电粒子在磁场中运动区域 (一) —— 以 2004 年广东高考压轴题为例
url: simulation-of-particle-motion-area-1
date: 2020-04-28 09:40:12
tags:
- VPython
- 可视化
- 物理题
- 磁场
description: 用 VPython 模拟粒子在磁场中可能的运动区域 ——  以 2004 年广东高考压轴题为例
---

## 0. 真题

**（2004 广东）如图，真空室内存在匀强磁场，磁场方向垂直于纸面向里，磁感应强度的大小 $B = 0.60T$，磁场内有一块平面感光板 $ab$，板面与磁场方向平行，在距 $ab$ 的距离 $l = 16 cm $ 处，有一个点状的 $\alpha$ 放射源 $S$，它向各个方向发射 $\alpha$ 粒子， $\alpha$ 粒子的速度都是 $v = 3.0×10^6m/s$，已知α粒子的电荷与质量之比 $q/m ＝ 5.0×10^7C/kg$，现只考虑在图纸平面中运动的 $\alpha$ 粒子，求 $ab$ 上被 $\alpha$ 粒子打中的区域的长度。**

<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-1/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 1. 解析

$\alpha$ 粒子带正电，在磁场中逆时针方向做匀速圆周运动，可以先计算在磁场中运动的轨道半径：

$$
qvB = m\frac{v^2}{R}
$$

得到 $R = mv/(qB) = 0.1 m$，发现粒子在磁场中运动的半径满足 $R < l < 2R$。

考虑左侧区域，切点 $P_1$ 与 $ab$ 相切，则该点是例子能打中的左侧最远点。根据几何关系有：

<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-1/p1.png' style='zoom:40%; margin: 0 auto; display: block;'/>

$$
NP_1 = \sqrt{R^2 - (l - R)^2}
$$

再考虑右侧区域，所有粒子距离 $S$ 点的距离不可能超过直径 $2R$，右侧最远距离为直径与 $ab$ 的交点 $P_2$。

<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-1/p2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

$$
NP_2 = \sqrt{(2R)^2 - l^2}
$$

因此在 $ab$ 上的距离为 $P_1P_2 = 20 cm$。

> 这里要注意，有些同学在考虑右侧区域的时候会认为是相切时最远。

## 2. VPython 模拟

用 VPython 来模拟粒子的运动轨迹，并在 $ab$ 板上绘制出可能的区域。

本例粒子出射角度从 -60 至 70 度变化，打在 $ab$ 板上后，会留下印记。

<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-1/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

(此次有动图，加载较慢，请耐心等待)

下图给出了不同出射角度，粒子运动的轨迹。
<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-1/situation.png' style='zoom:40%; margin: 0 auto; display: block;'/>

将所有角度变化的图像绘制，可以看到粒子打在 $ab$ 板上的区域是一条线段，如图中绿色部分所示。
<img src='/assets/images/2020-04-28-simulation-of-particle-motion-area-1/motion.png' style='zoom:40%; margin: 0 auto; display: block;'/>

