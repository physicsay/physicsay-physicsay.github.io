---
title:  建模教程 - 猎犬追狐狸 (二)
url: mathematical-modeling-chasing-problem-2
date: 2020-09-27 14:22:40
tags:
- Mathematical Modeling
- 模拟
- 数学建模
categories:  Modeling
description:  来研究下模型建立的过程。
---

## 0. 建模题

一只狐狸以不变的速度 $v_1$ 沿直线 AB 奔逃，一只猎犬以不变的速率 $v_2$ 追击，其运动方向始终对准狐狸。某时刻狐狸在 F 处，猎犬在 D 处开始追击， $FD \perp AB$， 已知 $FD = L$，如图所示。

1. 建立猎犬追狐狸的数学模型。 

<img src='/assets/images/2020-09-27-mathematical-modeling-chasing-problem-2/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 本题选自《中学奥林匹克竞赛物理教程-力学篇》中 2-17 题，对题目问题略有改编。


在参考 1 中，已经简要阐述猎犬追狐狸问题的分析、计算过程和结果，但缺少模型的建立过程。本文主要完成模型的建立过程。

在模型建立过程中，需要对问题作出假设后才能建立模型。

## 1. 模型假设

(1) 在追逐过程中，猎犬和狐狸的体力不衰减 (即速率不变)；      
(2) 追逐过程中地面是平坦的；    

(3) 在追逐过程中，无其他影响因素。  

## 2. 建立模型

(1) 建立直角坐标系 $O-xy$，需要注意的是，$x$ 轴向右，但为方便起见，$y$ 轴竖直向下，这样可以使得猎犬的位置坐标始终为正数。

(2) 建立微分模型

在每经过 $\Delta t$ 后，猎犬的追击方向会发生改变，假定在这个时间内，猎犬的速度方向不发生改变。因此考察 $\Delta t$ 时间前后猎犬和狐狸的位置。

假定在时间 $t$ 时，狐狸的位置在 $F(m_t, 0)$，猎犬的位置为 $H(x_t, y_t)$。经过 $\Delta t$ 时刻后，狐狸和猎犬分别到达了 $F'(m',0)$ 和 $H'(x', y')$ 位置。猎犬速度为 $v_h$，狐狸速度为 $v_f$。

<img src='/assets/images/2020-09-27-mathematical-modeling-chasing-problem-2/analysis.png' style='zoom:40%; margin: 0 auto; display: block;'/>

下面需要使用猎犬、狐狸的速度，再来计算 $F$，$F'$，$H$，$H'$ 四个坐标位置。

狐狸的坐标关系相对容易，因为是在水平方向做匀速运动，可以得到 $t$ $t + \Delta t$ 时间下的坐标：$F(m_t, 0) -> F(m', 0)$

满足:

$$
m' = m + v_f \cdot \Delta t
$$

在考虑猎犬的位置变化图：

<img src='/assets/images/2020-09-27-mathematical-modeling-chasing-problem-2/analysis2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

根据上图，绘制几何关系，得到特征三角形 $\triangle HH'P$，得到 $(\Delta r)^2 = (\Delta x)^2 + (\Delta y)^2$。

$$
(x' - x_t)^2 + (y_t - y')^2 = (v_h \cdot \Delta t)^2 —— (1)
$$

通过这个式子，只要知道 $\Delta t$， $x_t$，$y_t$，$v_h$ 就能计算得到猎犬经过 $\Delta t$ 时间后的位置 $x'$，$y'$，但上面只有一个方程，不能解出两个值，还需要列出另一个式子。

可以发现图中存在相似三角形 $\triangle FQH \sim \triangle FGH'$，写出对应边的比例关系。

$$
\frac{F'G}{F'Q} = \frac{GH'}{QH}
$$

可得：

$$
\frac{m'-x'}{m' - x_t} = \frac{y'}{y_t} —— (2)
$$

结合上面 (1)、(2) 式，可以通过 $\Delta t$， $x_t$，$y_t$，$v_h$，就能解出 $x'$，$y'$ 的值，即新的猎犬坐标，再将新的猎犬坐标代入，得到下一时刻的坐标。

> 如果将时间间隔 $\Delta t$ 取无限小，就变成了一个微分模型。现在用 $\Delta t$，则该模型是迭代模型。

可以绘制整个过程的流程图。

<img src='/assets/images/2020-09-27-mathematical-modeling-chasing-problem-2/flow.png' style='zoom:40%; margin: 0 auto; display: block;'/>

> 上述流程图仅表示主要流程。例如猎犬速度小于狐狸速度会陷入循环的情况没有考虑。

## 3. 模型求解

假定在 $t = 0$ 时刻猎犬与狐狸的间距为 $10 m$，猎犬的速度为 $v_h = 8 m/s$，狐狸的速度为 $v_f = 4 m/s$，时间间隔 $\Delta t = 0.5 s$，猎犬初始位置为 $H_0(0, 10)$，狐狸的初始位置为 $F_0(0, 0)$。

来计算下 $t = 0.5 s$ 时刻，狐狸的位置坐标 $F_{0.5}(m_{0.5}, 0)$

$m_{0.5} = m_0 + v_f \cdot \Delta t = 0 + 4\cdot 0.5 = 2$

再来利用 (1)(2) 式计算猎犬的位置 $H_{0.5}(x_{0.5}, y_{0.5})$

$$

\begin{cases} (x_{0.5} - x_0)^2 + (y_0 - y_{0.5})^2 = (v_h \cdot \Delta t)^2 
 \\\frac{m_{0.5} -x_{0.5}}{m_{0.5} - x_0} = \frac{y_{0.5}}{y_0}
\end{cases} 
$$

代入数据可得 $t = 0.5 s$ 后猎犬的位置坐标为 $H_{0.5}(0.78, 6.08)$，两者的间距比较大，依次将猎犬的坐标代入上式计算新的坐标，如下表：


| 时间 | 狐狸坐标 | 猎犬坐标 | 两者距离 |
| :-----| ----: | :----: |:----: |
|0|(0,0)|(0, 10)|10|
| 0.5 | (2,0)| (0.78,6.08) |6.20|
| 1 | (4,0)| (2.65,2.55) |2.88|
| 1.5 | (6,0)| (5.83,0.13) |0.21|

发现在 $t = 1.5 s$ 后，两者距离为 $0.21m$，按照猎犬的速度 $v_h = 8 m/s$，下一个 $\Delta t$ 时间内，两者一定能追上。

> 这里取了 $\Delta t = 0.5 s$ 的时间间隔，如果取的时间间隔更小，得到的追击时间会更加精确。

## 4. 思考
有以下几个思考题，可以考虑下：
1. 若猎犬在追击时提前做了预判——运动方向对准狐狸，并有轻微的偏转，那追击情况又是如何？
2. 如果狐狸做的匀速圆周运动，猎犬的轨迹是怎样的？


---
参考  
1. [VPython 教程 - 猎犬追狐狸 (一)](https://mp.weixin.qq.com/s/xXJmeayVNiGRnTNh0POiig)
2. [建模教程 - 猎犬追狐狸 (一)](https://mp.weixin.qq.com/s/ply-8g2e9G91ZabFb9oFAg)
