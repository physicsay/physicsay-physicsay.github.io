#!/bin/bash
file_name="$1"
timestamp=$(date "+%Y-%m-%d %H:%M:%S")
file_name2=${file_name:11}

echo "---
title: 
url: $file_name2
date: $timestamp
tags:
- 
categories: 
description: 
---

<img src='/assets/images/$file_name/[pic name]' style='zoom:40%; margin: 0 auto; display: block;'/>" > "_posts/"$file_name".md"

mkdir "assets/images/$file_name"

# create same file for saving program code
mkdir "../Code_JekyllBlog/$file_name"

