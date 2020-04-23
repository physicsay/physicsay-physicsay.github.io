---
title: 用 VPython 模拟球在圆环上的运动
url: vpython-simulation-ball-on-ring
date: 2020-04-23 10:24:08
tags:
- VPython
- 可视化
- 物理题
categories: comprehension 
description: 用 VPython 模拟小球在圆环上的运动。
---

来看一下无锡市 2019 届高三第一学期期末考试的题：

(多选) 如图所示，在竖直平面内固定一个半径为 R 的绝缘圆环，有两个可视为点电荷的相同的带负电的小球 A 和 B 套在圆环上，其中小球 A 可沿着圆环无摩擦地滑动，小球 B 固定在圆环上，和圆心 O 的连线与水平方向的夹角为 45 度，现将小球 A 从水平位置的左端由静止释放，则下列说法中正确的是 (    )

**A**. 小球 A 恰好可以回到出发点。  
**B**. 小球 A 从释放到运动到圆环最低点 Q 的过程中电势能始终保持不变  
**C**. 小球 A 运动到圆环最低点 Q 的过程中，速率不断变大  
**D**. 小球到达圆环最低点 Q 时的速度大小为 $\sqrt{2gR}$   

<img src='/assets/images/2020-04-23-vpython-simulation-ball-on-ring/fig.png' style='zoom:100%; margin: 0 auto; display: block;'/>

---

## 1. 解析

小球 A 受到重力、电场力和支持力的作用，由于支持力与运动方向垂直，不做功，小球的电势能与机械能相互转换，可以回到出发点， A 对。

A 从释放运动至圆环最低点 Q 的过程中，A、B 之间的距离发生变化，电场力做功，电势能发生变化，B 错。

小球在 A 点，重力与电场力的合力和 速度成锐角，速率增加；而在最低点 Q， 重力与电场力的合力 和 速度成钝角，速率减小，因此从 A 运动到 Q 点的过程中，速率先增后减，C 错。

在 B 点电荷的电场中，A、Q 两点电势相同，电场力做功为 0，只有重力势能做功，速率为 $\sqrt{2gR}$， D 对。

---

这里再下看一下 C 选项的合力与速度关系。

<img src='/assets/images/2020-04-23-vpython-simulation-ball-on-ring/freebody.png' style='zoom:30%; margin: 0 auto; display: block;'/>

> 可以通过初末状态速度与合外力的方向进行判断。

## 2. 模拟

使用 VPython 进行这个物理过程的模拟。

假设两个小球的质量为 0.1 kg，带电量均为 $-10^{-5} C $，圆环半径为 1m，重力加速度取 10 $m/s^2$。

<img src='/assets/images/2020-04-23-vpython-simulation-ball-on-ring/motion.gif' style='zoom:30%; margin: 0 auto; display: block;'/>

(此处有动图，加载较慢，请耐心等待)

并且模拟角度与速率的变换关系：

<img src='/assets/images/2020-04-23-vpython-simulation-ball-on-ring/oscillation.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

(此处有动图，加载较慢，请耐心等待)

从这里也可以看出，小球最终会回到 A 点。
> 注： 上图给出的是小球沿着圆环的速率，逆时针为角度正方向。

考察小球 A 运动到最低点 Q 的运动过程，如下所示：

<img src='/assets/images/2020-04-23-vpython-simulation-ball-on-ring/v_angle.png' style='zoom:40%; margin: 0 auto; display: block;'/>

从上图中可以直观看出：从 A 点运动到 Q 点的过程中，速率先增大后减小。

---

