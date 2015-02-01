#!/bin/bash

DATE_STAMP="$(date +"%Y-%m-%d")"
TIME_STAMP="$(date +"%H:%M")"
POST_PATH="_posts/$DATE_STAMP.md"
ASSETS_PATH="assets/article_images/$DATE_STAMP"

# Make the assets dir
mkdir -p $ASSETS_PATH

# Make the post itself
touch $POST_PATH

# Stub out the post's header matter
echo "---
layout: post
title:  \"FILL ME IN\"
date:   $DATE_STAMP $TIME_STAMP
---
" > $POST_PATH

# Open the post for editing
./edit.sh
