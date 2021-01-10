---
title:  建模教程 - 笨方法求解线性规划 (一)
url: mathematical-modeling-linear-programming-by-python-1
date: 2021-01-10 08:44:42
tags: 
- Mathematical Modeling
- 模拟
- 数学建模
categories: Modeling
description: 笨方法用 Python 求解线性规划问题。线性规划涉及优化、运筹等领域，学一点简单的线性规划吧。
---

## 0. 简介

在数学中，线性规划 (Linear Programming，LP) 特指目标函数和约束条件皆为线性的最优化问题。线性规划是最优化问题中的一个重要领域。许多实际问题都可以用线性规划来处理，特别是某些特殊情况，例如：网络流、多商品流量等问题，都被认为非常重要[1]。

描述线性规划问题的常用和最直观形式是标准型。标准型包括以下三个部分：

一个需要极大化的线性函数，例如

$$
c_1 x_1 + c_2x_2
$$

以下形式的问题约束，例如：

$$
a_{11}x_1 + a_{12}x_2 \le b_1
$$

$$
a_{12}x_1 + a_{22}x_2 \le b_2
$$

和非负变量，例如：

$$
x1 \ge 0
$$

$$
x2 \ge 0
$$


下面就以下例子来具体阐述线性规划的应用和求解。

## 1. 例题

咖啡屋配置两种饮料，成分配比和利润如下表：

|  饮料   | 奶粉 (杯) |咖啡 (杯) |糖(杯) |利润 (杯) |
|  :----:  | :----:  |:----:  |:----:  |:----:  |
| 甲  | 9 | 4 | 3 | 0.7 |
| 乙  | 4 | 5 | 10 | 1.2 |

每天最多可以使用 奶粉为 3600 g，咖啡 2000 g，糖 3000 g。若每天在原料限额内饮料能全部售出，应配置两种饮料各多少杯利润最大。

注： 冲调甲乙饮料需要的奶粉、咖啡、糖单位均为克(g)。

### 1.1 分析

从上表中，可以发现冲调一杯甲饮料需要奶粉 9g，咖啡 4g，糖 3g，获利 0.7 元；冲调一杯乙饮料需要 奶粉 4g，咖啡 5g，糖 10g，获利 1.2 元。

在原料使用有限的情况下，需要**合理分配**甲、乙两种的数量，使得利润最大。

当然，如果将原料全部用来制作甲饮料，最多可以制作 400 杯，此时奶粉会全部用完，利润为 280 元。若将原料全部用来制作乙饮料，最多可以制作 300 杯，此时糖会全部用完，利润为 360 元。

那全部用来制作乙饮料，是不是就获利最大呢？这里就需要用线性规划的知识求解了。

### 1.2 线性规划求解

这里假设配制甲饮料 $x$ 杯，乙饮料 $y$ 杯，需要满足原料条件：

甲、乙需要的奶粉应小于 3600 g：$9x + 4y \le 3600$

甲、乙需要的咖啡应小于 2000 g：$4x + 5y \le 2000$

甲、乙需要的糖应小于 3000 g：$3x + 10y \le 3600$

由于饮料不能是半杯，只能是自然数，有 $x, y \in N$

目标函数为利润： $P = 0.7x + 1.2y$，要使得利润最大，即代入不同的 $x$，$y$，首先满足上述原料的条件，再找到利润最大时的 $x$，$y$ 值。

这里使用**单纯形法**画出约束条件。

---

> 这里简单描述下单纯形法：

使用上面条件：$4x + 5y \le 2000$，在 $O-xy$ 平面内绘制 $4x + 5y = 2000$ 直线，将整个区域分成两部分： I 和 II，如下图所示：

<img src='/assets/images/2021-01-10-mathematical-modeling-linear-programming-by-python-1/area.png' style='zoom:40%; margin: 0 auto; display: block;'/>

$4x + 5y \le 2000$ 是上图的区域 II，即在区域 II 中，任意 $x$，$y$ 满足 $4x + 5y \le 2000$。

---

绘制能够同时满足约束条件的区域，即在这区域中，任意 $x$，$y$ 均能满足所有约束条件，如下图所示：

<img src='/assets/images/2021-01-10-mathematical-modeling-linear-programming-by-python-1/area2.png' style='zoom:100%; margin: 0 auto; display: block;'/>

求解的目标函数 $z = 0.7x + 1.2y$，改写成 $y = -\frac{7}{12}x + z$，是一条倾斜的直线， $z$ 是与 $y$ 轴截距。

求利润最大，即 $x$，$y$ 在满足区域的情况下，使得与 $y$ 轴截距最大。

当直线 $l$ 过 C 点时，$y$ 轴截距最大，即 $z$ 最大，利润最大。可以解出 $x = 200$，$y=240$ 时利润最大，为 428 元。


### 1.3 笨方法求解

这里可以使用笨方法对该问题进行暴力求解，即代入任意 $x$，$y$ 值，从而求解得到最大利润。具体思路如下：

令 $x$ 从 $0$ 到 $X$ 循环，$y$ 从 $0$ 到 $Y$ 循环，每次循环的步长为 1。当满足上述三个条件时，就将 $x$，$y$，利润 $P = 0.7x + 1.2y$ 计算出，分别放在不同的数组中。

在使用 $max()$ 函数找到利润数组中最大的，并得到对应的索引值，再通过索引值找到对应的 $x$，$y$值。

以下为 Python3 实现代码：

```python
# -*- coding: utf-8 -*-
# @Author: jiap
# @Wechat:  物理说(Physicsay)
# @Website: www.physicsay.com

xMax = 400;
yMax = 300;

xList = [];
yList = [];
ProfitList = [];

for i in range(0, xMax + 1):
	for j in range(0, yMax + 1):
		if (9 * i + 4 * j <= 3600) and (4 * i + 5 * j <= 2000) and (3 * i + 10 * j <= 3000):
			xList.append(i)
			yList.append(j)
			ProfitList.append(0.7 * i + 1.2 * j)

MaxProfit = max(ProfitList)
MaxIndex = ProfitList.index(MaxProfit)

print("x = ", xList[MaxIndex])
print("y = ", yList[MaxIndex])
print("Profit = ", MaxProfit)
```

输出结果为

> x =  200  
> y =  240  
> Profit =  428.0  

注意：
1. 这里使用了两重 for 循环，如果变量增加(例如有甲、乙、丙、丁 四种奶茶)，那求解的复杂度会增加，穷举法可能就不是个高效的方法了。

2. 这里的 `xMax = 400` 是指最多可用来制作 400 杯甲饮料。

### 1.4 绘制个利润分布图像

有 $x$，$y$ 的范围，也有对应的利润值 $P$，那能不能绘制**利润分布图**呢？横纵坐标为甲、乙奶茶的数量，通过 `colorbar` 的颜色来确定利润值。

用 Python 的 `matplotlib` 库绘制 **利润分布图** 如下所示：

<img src='/assets/images/2021-01-10-mathematical-modeling-linear-programming-by-python-1/python_fig.png' style='zoom:100%; margin: 0 auto; display: block;'/>

从上图可以看到在 $(200, 240)$ 位置颜色最深，即为利润最大。


---
Reference:  
[1] https://en.wikipedia.org/wiki/Linear_programming  
[2] https://www.geeksforgeeks.org/matplotlib-pyplot-contourf-in-python/  
[3] https://zhuanlan.zhihu.com/p/270319722
