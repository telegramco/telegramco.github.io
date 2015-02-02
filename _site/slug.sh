#!/bin/bash

# Small script to attach (or rename) a slug for the most recent post
#
# Usage: `./slug.sh an-example-slug`. This will rename the most recent post with
# the current date and the passed slug.

# User must provide an argument
if [ -z "$1" ]; then
    echo "Usage: ./slug.sh an-example-slug"
    exit
fi

FILE_TO_RENAME="_posts/$(ls -t _posts/|head -n1)"
DATE_STAMP="$(date +"%Y-%m-%d")"
SLUG=$1
FILE_NAME="_posts/$DATE_STAMP-$SLUG.md"

echo "Renaming $FILE_TO_RENAME to $FILE_NAME"
mv $FILE_TO_RENAME $FILE_NAME
