#!/bin/bash

xdotool search --all --screen $DISPLAY --classname polybar windowkill %@
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown &

echo "Polybar launched..."
