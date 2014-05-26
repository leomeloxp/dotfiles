#!/bin/bash

#ls -l "$1";

DIR="$1";
cd "$DIR";
echo "<openbox_pipe_menu>";
ls -1 "$DIR" | while read x; do 
	if [[ -d "$x" ]]; then
		DIR2="$DIR/$x";
		echo "<menu id=\"$x\" label=\"$x\" execute=\"/home/leo/.config/openbox/dirlist.sh $DIR2\" />";
	elif [[ -f "$x" ]]; then
		echo "<item label=\"$x\"/>";
	fi
done
echo "</openbox_pipe_menu>";
