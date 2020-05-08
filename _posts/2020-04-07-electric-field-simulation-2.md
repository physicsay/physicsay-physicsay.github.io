---
title: 电场、电势模拟 -- 三个电荷
url: electric-field-simulation-2
date: 2020-04-07 13:59:50
tags:
- 电场
- 可视化
categories: electromagnetism
description: 三个电荷的电场和电势分布到底是怎么样的呢？
---

## 0. 题目

(改编) 有三个等量的点电荷分别固定在正三角形的三个顶点上，电量如图所示，若规定无穷远处电势为零，则在三个点电荷产生的电场中能够找到 \___ 处合场强为 0 的位置(无穷远处除外)。

<img src='/assets/images/2020-04-07-electric-field-simulation-2/fig.png' style='zoom:40%; margin: 0 auto; display: block;'/>

对于这个题，整个结构是对称的，可以从两个正电荷的中垂线处下手。我们发现，两个正电荷在中垂线上的合电场强度是沿着中垂线的，而负电荷在中垂线上的电场强度也是沿着中垂线的。可以通过对比距离点电荷远近 $r$ 来确定合场强为 0 的位置。

答案是 2 处合场强为 0 的位置 (无穷远处除外)。

那么我们来绘制不同情况的电场强度、电场强度大小分布 和 电势分布图。

## 1. 一个负点电荷，两个正点电荷情况

### 1.1 电场强度

<img src='/assets/images/2020-04-07-electric-field-simulation-2/p2n1-e.png' style='zoom:30%; margin: 0 auto; display: block;'/>

从图中(箭头处)可以看出，有两处的电场强度为 0，但具体位置无法确定。

### 1.2 电场强度大小分布
画出某点 $P(x,y)$ 处受到三个点电荷的电场强度的大小分布：

<img src='/assets/images/2020-04-07-electric-field-simulation-2/p2n1-ed.png' style='zoom:40%; margin: 0 auto; display: block;'/>

从这张图无法看到哪个点是电场强度大小为 0，那么我们画出在 $y$ 轴的电场强度大小，如下图所示：

<img src='/assets/images/2020-04-07-electric-field-simulation-2/p2n1-ey.png' style='zoom:40%; margin: 0 auto; display: block;'/>

从图中可以，除无穷远处电场强度为零，还有 2 个位置的电场强度大小也为 0，在 $y = -0.15$ 和 $y = 6.20$ 。

### 1.3 电势分布

绘制三个电荷的电势分布，如下图所示：

<img src='/assets/images/2020-04-07-electric-field-simulation-2/p2n1-ef.png' style='zoom:40%; margin: 0 auto; display: block;'/>

## 2. 三个正点电荷
那么如果是三个正点电荷呢？若规定无穷远处电势为零，则在三个点电荷产生的电场中能够找到 \___ 处合场强为 0 的位置(无穷远处除外)。照例绘制电场强度、电场强度大小分布 和 电势分布。

### 2.1 电场强度

绘制三个正点电荷的电场强度分布，如下图所示：

<img src='/assets/images/2020-04-07-electric-field-simulation-2/p3-e.png' style='zoom:50%; margin: 0 auto; display: block;'/>

### 2.2 电场强度大小分布
画出某点 $P(x,y)$ 处受到三个正点电荷的电场强度的大小分布：

<img src='/assets/images/2020-04-07-electric-field-simulation-2/p3-ed.png' style='zoom:40%; margin: 0 auto; display: block;'/>
同时绘制 $y$ 轴方向电场强度大小的曲线。

<img src='/assets/images/2020-04-07-electric-field-simulation-2/p3-ey.png' style='zoom:40%; margin: 0 auto; display: block;'/>


从图中可以看出，当三角形的顶点放置三个等量电荷时，除无穷远外，$y$ 轴方向仍有两个位置能使合场强为 0，分别为 $y = 0.24$ 和 $y = 0.57$。

注意，这里要考虑对称性，因此，共有四个位置使合场强为零。


### 2.3 电势分布

<img src='/assets/images/2020-04-07-electric-field-simulation-2/p3-ef.png' style='zoom:40%; margin: 0 auto; display: block;'/>

---

知道了三个点电荷的电场、电势分布，是不是有了更深刻的理解呢？

