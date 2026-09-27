#!/usr/bin/sh

LABEL_TEXT=$($HOME/Codes/linux/SPRM-c)
# LABEL_TEXT=$($HOME/Codes/linux/SPRM-cpp)
# LABEL_TEXT=$($HOME/Codes/linux/SPRM.awk)
# LABEL_TEXT=$($HOME/Codes/linux/SPRM.pl)
# LABEL_TEXT=$($HOME/Codes/linux/SPRM.sh)
# LABEL_TEXT=$($HOME/Codes/linux/SPRM.py)

echo -e "<txt><span font_family='monospace, Courier New' foreground='#FF1493'>$LABEL_TEXT</span></txt>\n<tool>SPRM</tool>"
