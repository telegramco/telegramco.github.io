#!/bin/bash

# Simple command to open the most recent post for editing
open /Applications/Mou.app _posts/$(ls -t _posts/|head -n1)
