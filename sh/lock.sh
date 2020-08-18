#!/bin/bash

setxkbmap -layout us 
i3lock -n -i $1
setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle gtp:caps_toggle
