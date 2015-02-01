#!/bin/bash

DATE_STAMP="$(date +"%Y-%m-%d")"
TIME_STAMP="$(date +"%H:%M")"
POST_PATH="_posts/$DATE_STAMP.md"
ASSETS_PATH="assets/article_images/$DATE_STAMP"

mkdir -p $ASSETS_PATH
touch $POST_PATH

echo "---
layout: post
title:  \"FILL ME IN\"
date:   $DATE_STAMP $TIME_STAMP
---
" > $POST_PATH
