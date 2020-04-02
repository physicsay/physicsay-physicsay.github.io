#!/bin/bash

file_name="$1"

echo '---
title: 
url: ${file_name:11}
date: $(date "+%Y-%m-%d %H:%M:%S")
tags:
categories: 
description: 
---
<img src="/assets/images/[article dir]/[pic name]" style="zoom:40%; margin: 0 auto; display: block;" />' > "_posts/"$1".md"

mkdir "assets/images/$file_name"
