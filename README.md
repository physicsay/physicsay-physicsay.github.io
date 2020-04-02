# README

## New files
Run shell script to create new file and images fold.

1. Create new shell script named new.sh and revise rights of script 

```shell
$ chmod +x ./new.sh
```

2. Content

```shell
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
```

3. Usage
```shell
$ ./new.sh "2020-04-03-non-free-fall-1"
```

The shell script will create `2020-04-03-non-free-fall-1.md` file in `_posts` dir and create `2020-04-03-non-free-fall-1` fold in `assets/images/`. 

## Add images

 `<img src="/assets/images/[article dir]/[pic name]" style="zoom:40%; margin: 0 auto; display: block;" />`

