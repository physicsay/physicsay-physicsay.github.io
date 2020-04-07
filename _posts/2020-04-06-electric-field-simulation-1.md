---
title: 电场、电势模拟 -- 电偶极子
url: ectric-field-simulation-1
date: 2020-04-06 14:31:02
tags:
- 电场
- 可视化
categories: electromagnetism
description: 很难把握住电场和电势的概念？把电场和电势画出图来！
---

电场和电势的概念是高中物理课程中较难把握的，那么借助软件将电场线和电势画出来，是不是更容易理解些呢？

我们考虑由两个等量异号点电荷组成的系统，这类模型在高中物理中较为常见。


## 1. 电场线

定义初始条件，假设两个点电荷坐标为 A(-1，0)、B(1，0)，并且电荷量为 1。

> 注：为直观显示，本文将库伦常量 $k$ 默认为 1。

### 1.1 电场线 (二维)

1.1.1 两个正点电荷的电场线

<img src='/assets/images/2020-04-06-electric-field-simulation-1/pospos.png' style='zoom:40%; margin: 0 auto; display: block;'/>


#### 1.1.2 正负点电荷的电场线

<img src='/assets/images/2020-04-06-electric-field-simulation-1/posneg.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 1.2 改变其中一个点电荷？

我们来思考下，如果两个点电荷中，有个电荷的电荷量从 -Q 慢慢变成 +Q，电场线是如何变化的呢？

我们假设在 (1,0) 处的电荷从 -1 变成 +1，电场线是如何变化呢？请看下面的动图：

<img src='/assets/images/2020-04-06-electric-field-simulation-1/dynamic.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

(此处有图，加载较慢，请耐心等待)

考虑到动图加载较慢，本文给出了不同电荷量的电场强度图。

下图从左至右，位于 (1,0)处的电荷 q 分别为 -1，-0.5，0，0.5，1。 
<img src='/assets/images/2020-04-06-electric-field-simulation-1/stat.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 1.2 电场线 (三维)

使用软件绘制三维的电场线，如下图所示。

两个正点电荷的三维电场线

<img src='/assets/images/2020-04-06-electric-field-simulation-1/dynamic-pospos.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

正负电荷的三维电场线
<img src='/assets/images/2020-04-06-electric-field-simulation-1/dynamic-posneg.gif' style='zoom:40%; margin: 0 auto; display: block;'/>

(由于 gif 图加载较慢，请耐心等待)

## 2. 电势

绘制完电场线分布后，可以绘制电偶极子的电势分布图。

### 2.1 两个正点电荷的电势
<img src='/assets/images/2020-04-06-electric-field-simulation-1/ele-pospos.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 2.2 正负点电荷的电势
<img src='/assets/images/2020-04-06-electric-field-simulation-1/ele-posneg.png' style='zoom:40%; margin: 0 auto; display: block;'/>

### 2.3 改变某点电荷？

改变位于 (1,0) 处的电荷 q 为 -0.5，绘制电势分布图，如下所示。

 <img src='/assets/images/2020-04-06-electric-field-simulation-1/ele-2.png' style='zoom:40%; margin: 0 auto; display: block;'/>

改变位于 (1,0) 处的电荷 q 为 +0.5，绘制电势分布图，如下所示。

<img src='/assets/images/2020-04-06-electric-field-simulation-1/ele-1.png' style='zoom:40%; margin: 0 auto; display: block;'/>

---
有了可视化的示意图，是不是可以对电场和电势分布更直观些？

那如果是三个电荷的分布呢？敬请期待下文。
