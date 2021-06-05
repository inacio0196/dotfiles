#! /usr/bin/env bash

xdg-open "$(locate home | rofi -threads 0 -columns 1 -width 85 -dmenu -i -p "Search:")"