#! /usr/bin/env bash

cat .zsh_history | sed 's/: [0-9]*:[0-9];//' | awk '!seen[$0]++' | dmenu -l 30 -p 'commands history:' | xclip -selection c