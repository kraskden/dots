#!/bin/bash

path="$HOME/pic/shots"

user_path_file="$HOME/exe/sh/res/user_shot_path.txt"

# user-gen path
user_path="$(cat $user_path_file)"


if [[ $1 == "-r" ]]; then
	echo > "$user_path_file"
	echo "Shot path reset to default"
	exit 0
fi

if [[ "$1" == "-o" ]]; then 
	echo $(realpath "$2") > "$user_path_file"
	echo "Shot path sets to $(realpath "$2")"
	exit 0
fi

if [[ $user_path ]]; then
	path=$user_path
fi

maim $@ "$path/$(date +%d_%m_%y__%H:%M:%S).png"
