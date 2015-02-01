#!/bin/bash

DATE_STAMP="$(date +"%Y-%m-%d")"
POST_PATH="_posts/$DATE_STAMP.md"
ASSETS_PATH="assets/article_images/$DATE_STAMP"

mkdir $ASSETS_PATH
touch $POST_PATH

echo "---
layout: post
title:  \"FILL ME IN\"
date:   $DATE_STAMP 14:00 <-- FILL-ME-IN
---
" > $POST_PATH
