#!/bin/bash
# Script name:  obmpc.sh
# Requirement:  mpc
# Author:       straivir@ucsd.edu AKA grad_guy 
# License:      GPL 2.0

# INSTALLATION
# 1. Put this script in /usr/bin/ and chmod +x /usr/bin/obmpc.sh
# 2. Add <menu id="obmpc" label="OBMPC" execute="obmpc.sh" /> in menu.xml
# 3. Add <menu id="obmpc" /> inside your openbox root-menu

# NOTE
# Adjusting Volume needs repeating action, so IMHO it's not a good idea for pipe Menu.
# Anyhow, it's very easy to add Volume control.

# SETUP
tmp=/tmp/.obmpc
chop=20
# END SETUP

nowwhat=`mpc current -f '%title% - %artist%'`
nowstatus=`mpc | grep '#'`
whatnow=`mpc | tail -n 1`

controlmenu ()
{
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
echo "<openbox_pipe_menu>"

echo "</openbox_pipe_menu>"
}

if [ -z "$1" ]
then
    echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
    echo "<openbox_pipe_menu>"
    echo "  <separator label=\"♫ $nowwhat \"/>"
		echo "  <item label=\"プレー\">"
		echo "    <action name=\"Execute\"><execute>mpc toggle</execute></action>"
		echo "  </item>"
		echo "  <item label=\"ストップ\">"
		echo "    <action name=\"Execute\"><execute>mpc stop</execute></action>"
		echo "  </item>"
		echo "  <item label=\"前\">"
		echo "    <action name=\"Execute\"><execute>mpc prev</execute></action>"
		echo "  </item>"
		echo "  <item label=\"次\">"
		echo "    <action name=\"Execute\"><execute>mpc next</execute></action>"
		echo "  </item>"
		echo "  <item label=\"リピート\">"
		echo "    <action name=\"Execute\"><execute>mpc repeat</execute></action>"
		echo "  </item>"
		echo "  <item label=\"ランダム\">"
		echo "    <action name=\"Execute\"><execute>mpc random</execute></action>"
		echo "  </item>"
	echo "  <separator label=\"$nowstatus \"/>"
    echo "</openbox_pipe_menu>"
fi
if [ "$1" = control ]
then
    controlmenu
fi
