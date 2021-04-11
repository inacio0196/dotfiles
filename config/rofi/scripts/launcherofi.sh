#!/bin/bash

# Launch rofi with custom configuration
rofi -show drun -sidebar-mode \
-modi run,drun,window,tools:~/.config/rofi/scripts/tools.sh \
-hide-scrollbar true \
-bw 2 \
-lines 12 \
-padding 24 \
-width 60 \
-location 0 \
-columns 3 \
-font "Noto Sans 10" \
-color-enabled true \
-color-window "#2d3039, #2d3039, #2d3039" \
-color-normal "#2d3039, #d8dee8, #2d3039, #2d3039, #4ec2e8" \
-color-active "#2d3039, #b48ead, #2d3039, #2d3039, #91BEBBFF" \
-color-urgent "#2d3039, #ebcb8b, #2d3039, #2d3039, #ebcb8b"


# Light Theme
# -color-enabled true \
# -color-window "#ffffff, #ffffff, #ffffff" \
# -color-normal "#ffffff, #474c57, #ffffff, #ffffff, #4ec2e8" \
# -color-active "#ffffff, #fec7cd, #ffffff, #ffffff, #95c1c0" \
# -color-urgent "#ffffff, #f59335, #ffffff, #ffffff, #f59335"

# Dark Theme
# -color-enabled true \
# -color-window "#2f343f, #2f343f, #2f343f" \
# -color-normal "#2f343f, #d8dee8, #2f343f, #2f343f, #bf616a" \
# -color-active "#2f343f, #b48ead, #2f343f, #2f343f, #93e5cc" \
# -color-urgent "#2f343f, #ebcb8b, #2f343f, #2f343f, #ebcb8b"

# Theming help
# color window = background, border, separator
# color normal = background, foreground, background-alt, highlight-background, highlight-foreground
# color active = background, foreground, background-alt, highlight-background, highlight-foreground
# color urgent = background, foreground, background-alt, highlight-background, highlight-foreground