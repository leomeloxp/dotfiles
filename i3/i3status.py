# -*- coding: utf-8 -*-

import subprocess

from i3pystatus import *

status = Status(standalone=True)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
                format="%a %-d %b %H.%M",
                color ="#0099CC",
            )

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load",
                format="{avg1}")

# Shows your CPU temperature, if you have a Intel CPU

status.register("temp", 
                format="{temp:.0f}°C",  
                color="#00FF00")

# The battery monitor has many formatting options, see README for details

# This would look like this, when discharging (or charging)
# ↓14.22W 56.15% [77.81%] 2h:41m
# And like this if full:
# =14.22W 100.0% [91.21%]
#
# This would also display a desktop notification (via dbus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
status.register("battery",
                format="{status}:{percentage:.2f}% [{remaining:%E%hh:%Mm}]",
                alert=True,
                alert_percentage=10,
                status={
                    "DIS": "↓",
                    "CHR": "↑",
                    "FULL": "=",
                },)
# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
status.register("network",
                interface="enp4s0",
                format_up="{v4}",
                format_down="")

# Has all the options of the normal network and adds some wireless specific things
# like quality and network names.
#
# Note: requires both netifaces and basiciw
status.register("wireless",
                interface="wlp12s0",
                format_up="{essid} {quality:03.0f}%",)

# Shows disk available space
# status.register("disk",
#                 path="/data",
#                 format="data:{avail}G",)
status.register("disk",
                path="/",
                format="ssd:{avail}G",)

# weather
status.register("weather",
                location_code="JEXX0001",
                colorize=True,
                format="Jersey:{current_temp}[{humidity}%]",)


# Shows pulseaudio default sink volume
status.register("pulseaudio",
                format="{muted}:{volume}",
                muted="X",
                unmuted="♫",
            )

# Shows mpd status
status.register("mpd",
                format="{status} {title} - {artist} \[ {album} \]",
                status={
                    "pause": "▷",
                    "play": "▶",
                    "stop": "◾",
                },)

status.run()
