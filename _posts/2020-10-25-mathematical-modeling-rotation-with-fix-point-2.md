---
title: 建模教程 - 绕定点旋转 (二)
url: mathematical-modeling-rotation-with-fix-point-2
date: 2020-10-25 08:19:39
tags:
- Mathematical Modeling
- 模拟
- 数学建模
categories: Modeling
description:  本文以 2017 HiMCM A 题 (Drone Clusters as Sky Light Displays) 某一问为例，阐述题中使无人机造型动态化的数学模型。
---

## 1. 建模题

以 2017 年 HiMCM A 题 —— Drone Clusters as Sky Light Displays 为例，题目中需要用无人机群构建造型，并建立数学模型使造型动态化，即对 Part I 中 (b) 的 'animate your image and describe the animation.' 作一个详细解答。

Our large city has an annual festival and is considering adding an outdoor aerial light show. The Mayor has asked your team to investigate the idea of using drones to create three possible sky displays.

Part I - For each display:

b) Determine the flight paths of each drone or set of drones that would **animate your image and describe the animation**. (Note that you do not have to actually write a program to animate the image, but you do need to mathematically describe the flight paths.)

## 2. 建立模型

选定需要的图片，将图片像素化，得到需要像素点的数量，再将每个像素点视作一架无人机，即可得到构建某造型时需要无人机的数量。现需要描述无人机群造型是如何运动的，即需要描述像素点的运动方程，并编写程序使得造型动起来。具体过程如下所示：

<img src='/assets/images/2020-10-25-mathematical-modeling-rotation-with-fix-point-2/pixel.png' style='zoom:40%; margin: 0 auto; display: block;'/> 

将图片像素点化后，放在 $O-xy$ 坐标轴内，即知道了图片上每个像素点的位置，也就可以对这些像素点进行操作，而像素点与实际无人机的位置又是一一映射 (比例放大、平移操作)，这样也就可以解析无人机位置的变化轨迹。

参考 [1] 中给出了二维平面下绕定点的旋转方程：给定平面中某固定点 $F(a, b)$，可以计算出某点 $P(x, y)$ 逆时针绕定点旋转 $\alpha$ 后的新坐标。

给定定点 $F(a, b)$ 坐标，$P(x, y)$ 点坐标，以及逆时针旋转的角度 $\alpha$，就可以得到 $Q(x', y')$ 点的坐标。

$$
x' - a = (x - a) cos\alpha - (y - b) sin\alpha
$$

$$
y' - b = (x - a) sin\alpha + (x - a) cos\alpha
$$

通过 Matlab 获取图片中所有像素点坐标，找到需要旋转的像素点，并确定旋转的固定点，最后再通过程序模拟运动。

## 3. 模型求解

以下图机器人图片为例，使用 Matlab 中的 `Edge` 功能获取图片中边缘的坐标位置。

<img src='/assets/images/2020-10-25-mathematical-modeling-rotation-with-fix-point-2/robot.png' style='zoom:40%; margin: 0 auto; display: block;'/> 

输出的结果中，是用 0 和 1 表示该坐标点是否有像素，0 表示该坐标处为白色，1 表示该坐标处为黑色。

再通过循环，剔除为 0 的坐标，保留不为零的坐标，即图片中黑色线的坐标 $(x_i, y_i)$。

找到需要旋转的部分，本文选取机器人左侧区域作为旋转区域，并找到固定点 $F(a, b)$，如下图所示。

<img src='/assets/images/2020-10-25-mathematical-modeling-rotation-with-fix-point-2/sep.png' style='zoom:40%; margin: 0 auto; display: block;'/> 

之后要对机器人手臂部分的像素点绕着固定点 $F$ 旋转，旋转角度为逆时针方向。到达一定角度后，再变成顺时针旋转。

最后的动画效果如下图所示：

<img src='/assets/images/2020-10-25-mathematical-modeling-rotation-with-fix-point-2/motion.gif' style='zoom:40%; margin: 0 auto; display: block;'/> 

这样就模拟了无人机造型的动态化过程。当然本文旨在建立一个简单的二维旋转方程，使得静态图的局部围绕某个定点旋转。三维的旋转方程在此不赘述，有兴趣的同学可以自行查阅相关文献。


---
参考：  

1. [建模教程 - 绕定点旋转 (一)](https://mp.weixin.qq.com/s/LryrFw0KiFYYA37Am2TJzw)

---
更多建模教程：

1. [建模教程 - 猎犬追狐狸 (一)](https://mp.weixin.qq.com/s/ply-8g2e9G91ZabFb9oFAg) 
2. [建模教程 - 猎犬追狐狸 (二)](https://mp.weixin.qq.com/s/0SLWp8K3SnrztYK2ILc8UQ)  
3. [建模教程 - 猎犬追狐狸 (三)](https://mp.weixin.qq.com/s/MxT-7FagiaaaGCj7GksW3g)  












