---
title: 变速问题一种讨巧解法 —— 以 2012 江苏物理高考为例 (2)
url: non-uniform-problem-2
date: 2020-04-03 10:50:22
tags:
- 变速运动
categories: mechanics
description: 用微积分试试高中的变速问题？
---

在 《变速问题一种讨巧解法 —— 运动(1-1)》 一文中，我们讲解了两种方法求解加速度变化的问题，文中介绍的第二种方案是通过数值解来进行凹凸函数的判断。下面用微积分的方式来介绍这个题 (本文有一定难度)。

(2012 江苏) 将一只皮球竖直向上抛出，皮球运动时受到空气阻力的大小与速度的大小成正比。下列描绘皮球在上升过程中加速度大小 *a* 与时间 *t* 关系的图像，可能正确的是（　　）

<img src='/assets/images/2019-12-09-non-uniform-problem-2/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 3. 解法三

对物体应用牛顿第二定律，可以写出方程，并对方程进行求解：

$$
- (mg + kv) = ma = m\frac{dv}{dt}\\  
\frac{dv}{-g-\frac{k}{m}v} = dt \\
\int\frac{dv}{-g-\frac{k}{m}v} = \int dt
$$

代入初速度 $v_0$，可求解出速度与时间的关系：  


$$
v(t) = (\frac{mg}{k}+v_0)e^{-\frac{k}{m}t}-\frac{mg}{k}
$$

在上升过程中，*v* 减小，*a* 也会不断减小，在最高点，速度为 0， 加速度为 *g*，题目明确的是 **上升过程**，因此可以排除 (B) 和 (D) 选项。

由于题目中判断的是加速度，因此，我们对速度进行求导，得到加速度与时间的关系曲线：
$$
a(t) = -\frac{k}{m}\cdot(\frac{mg}{k}+v_0)\cdot e^{-\frac{k}{m}t}
$$
我们发现方程中有一个 $e^{-t}$，结合函数图像，就能判断出是个凹函数，因此选择 (C) 。 


**思考**

1. 这里先求出 $v-t$，再求出 $a-t$ 的关系式，那能不能直接求出  $a-t$ 的关系式呢？

---
相关文章：[变速问题一种讨巧解法 —— 运动(1-1)](http://physicsay.com/mechanics/non-uniform-problem-1/)

---

我们开通了「物理说」的官方网站： www.physicsay.com 。  

