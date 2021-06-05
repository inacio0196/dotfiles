#!/usr/bin/env bash
# author: unknown
# sentby: MoreChannelNoise (https://www.youtube.com/user/MoreChannelNoise)
# editby: gotbletu (https://www.youtube.com/user/gotbletu)

# demo: https://www.youtube.com/watch?v=kxJClZIXSnM
# info: this is a script to launch other rofi scripts,
#       saves us the trouble of binding multiple hotkeys for each script,
#       when we can just use one hotkey for everything.

declare -A LABELS
declare -A COMMANDS

# List of defined 'bangs'
COMMANDS["clipboard"]='rofi -modi "clipboard:~/.config/rofi/bin/greenclip print" -show clipboard'
LABELS["clipboard"]=""

COMMANDS["history"]="~/.config/rofi/scripts/history.sh"
LABELS["history"]=""

COMMANDS["monitor"]="~/.config/rofi/scripts/monitor.sh"
LABELS["monitor"]=""

COMMANDS["sound"]="~/.config/rofi/scripts/sound.sh"
LABELS["sound"]=""

COMMANDS["todo"]='~/.config/rofi/scripts/todo.sh'
LABELS["todo"]=""

COMMANDS["finder"]='~/.config/rofi/scripts/finder.sh'
LABELS["finder"]=""

COMMANDS["calculator"]='rofi -show calc -modi calc -no-show-match -no-sort'
LABELS["calculator"]=""

################################################################################
# do not edit below
################################################################################
##
# Generate menu
##
function print_menu()
{
    for key in ${!LABELS[@]}
    do
#   echo "$key    ${LABELS}"
    echo "$key    ${LABELS[$key]}"
     # my top version just shows the first field in labels row, not two words side by side
    done
}
##
# Show rofi.
##
function start()
{
    # print_menu | rofi -dmenu -p "?=>" 
    print_menu | sort | rofi -dmenu -i -p "Tools"

}


# Run it
value="$(start)"

# Split input.
# grab upto first space.
choice=${value%%\ *}
# graph remainder, minus space.
input=${value:$((${#choice}+1))}

##
# Cancelled? bail out
##
if test -z ${choice}
then
    exit
fi

# check if choice exists
if test ${COMMANDS[$choice]+isset}
then
    # Execute the choice
    eval echo "Executing: ${COMMANDS[$choice]}"
    eval ${COMMANDS[$choice]}
else
 eval  $choice | rofi
 # prefer my above so I can use this same script to also launch apps like geany or leafpad etc (DK) 
 #   echo "Unknown command: ${choice}" | rofi -dmenu -p "error"
fi