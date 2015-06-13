# -*- coding: utf-8 -*-

# Full documentation of this file can be found at:
# http://docs.enkore.de/i3pystatus/index.html
# package name is i3pystatus-git (in Arch Linux)

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

status.register("keyboard_locks",
                format="{num}",
                color="#0099CC",
            )

status.register("cpu_usage_graph",
                format="{cpu_graph}",
                start_color="green",
                end_color="red",
                graph_width=7,
                graph_style="braille-fill",
                )

status.register("cpu_usage",
                format="CPU:{usage:1}%",
                )

status.register("mem",
                format="RAM:{percent_used_mem}%"
                )

status.register("network",
                interface="enp2s0",
                format_up="{interface}:{kbs}KB/s|{network_graph}",
                format_down="wired is down",
                dynamic_color=True,
                start_color="#0099CC",
                end_color="#00FF00",
                graph_width=7,
)

status.register("disk",
                path="/",
                display_limit=20,
                critical_limit= 5,
                format="ssd:{avail}G",)
status.register("disk",
                path="/srv/",
                display_limit=80,
                critical_limit= 20,
                format="srv:{avail}G",)

# Shows pulseaudio default sink volume
status.register("pulseaudio",
                format="{muted}:{volume}% {volume_bar}",
                color_unmuted="#0099CC",
                multi_colors=True,
                muted="X",
                unmuted="♫",
            )

# # Shows mpd status
# status.register("mpd",
#                 format="{status} {title} - {artist} \[ {album} \]",
#                 status={
#                     "pause": "▷",
#                     "play": "▶",
#                     "stop": "◾",
#                 },)

status.register("spotify",
                format="{title} - {artist}",
                color="#0099CC"
                )

status.run()
