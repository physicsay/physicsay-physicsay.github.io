---
title: 讲讲斜抛运动 (二)
url: projectile-motion-2
date: 2020-04-04 10:03:23
tags:
- 平抛运动
categories: mechanics
description: 斜抛运动解方程有点复杂，有没有更好的方法呢？
---

我们来考虑下一定高度的斜抛运动：某同学在进行掷铅球训练，抛出时，铅球距离地面的高度为 $H$，初速为 $v_0$，求铅球落地距离最远的抛射角度，及最远距离。

<img src='/assets/images/2020-04-04-projectile-motion-2/projectile.png' style='zoom:30%; margin: 0 auto; display: block;'/>

## 2. 方法二

由于斜抛运动整个运动是一个过程，可以尝试使用机械能守恒定律：

$$
mgH + \frac{1}{2}mv_0^2 = \frac{1}{2}mv_f^2
$$

可以得出末速度 $v_f = \sqrt{v_0^2 + 2gH}$

我们来考察铅球落地时的速度：

<img src='/assets/images/2020-04-04-projectile-motion-2/composer.png' style='zoom:30%; margin: 0 auto; display: block;'/>

末速度 $v_f$ 可以由 斜向上的初速度 $v_0$ 和 竖直方向的速度 $gt$ 合成。

我们来考察下这个速度三角形，三角形面积 $S_\Delta = \frac{1}{2}gt v_0cos\theta$，同时也注意到铅球移动的水平距离 $x = v_0cos\theta\cdot t$，即可以得出速度三角形的面积为：$S_\Delta = \frac{1}{2}gx$。

铅球落地的水平距离 $x = \frac{2S_\Delta}{g}$，当速度三角形面积最大时，铅球水平距离最远。

将速度三角形面积换一个公式求解 $S_Delta = \frac{1}{2}v_0v_fsin(\theta + \alpha)$，当 $(\theta + \alpha) = \frac{\pi}{2}$ 时，速度三角形面积最大 $S_{max} = \frac{1}{2}v_0v_f$，代入水平距离公式，可以计算出铅球落地水平距离最远为：$x_{max} = \frac{v_0\sqrt{v_0^2+2gH}}{g}$。

计算下此时的抛出角度：

$$
tan\theta = \frac{sin\theta}{cos\theta} = \frac{cos\alpha}{cos\theta} = \frac{v_0}{v_f} = \frac{v_0}{\sqrt{v_0^2+2gH}}
$$

这样，是不是就更快地解出了最远距离和最适角度。

## 思考

1. 这里巧妙地使用了速度三角形求解，这里想想为什么竖直方向的速度是 $gt$，如果认为竖直方向的速度为 $v = vsin\theta - gt$，那么也需要写出水平速度分量，然后画画图，再想想。

---

参考：
1. 程贤楼. 从物理角度看足球打门和铅球投掷[J]. 物理之友. 2015年11期.

