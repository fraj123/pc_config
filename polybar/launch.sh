#!/usr/bin/env sh

## Terminate alreadu run bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch
polybar example &
