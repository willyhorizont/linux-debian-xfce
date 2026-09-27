#!/bin/sh

LABEL_TEXT=$($HOME/willyhorizont.github.io/linux/SuckMyClock-c)
# LABEL_TEXT=$($HOME/willyhorizont.github.io/linux/SuckMyClock-cpp)
# LABEL_TEXT=$($HOME/willyhorizont.github.io/linux/SuckMyClock.awk)
# LABEL_TEXT=$($HOME/willyhorizont.github.io/linux/SuckMyClock.pl)
# LABEL_TEXT=$($HOME/willyhorizont.github.io/linux/SuckMyClock.sh)
# LABEL_TEXT=$($HOME/willyhorizont.github.io/linux/SuckMyClock.py)

echo -e "<txt><span font_family='monospace, Courier New' foreground='#FF1493'>$LABEL_TEXT</span></txt>\n<tool>Suck My Clock</tool>"
