#!/bin/bash

# Simple command to open the most recent post for editing
/Applications/MacDown.app/Contents/SharedSupport/bin/macdown _posts/$(ls -t _posts/|head -n1)
