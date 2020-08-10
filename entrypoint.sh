#!/usr/bin/env bash
set -euo pipefail

export DISPLAY=:0


Xvfb :0 -screen 0 1366x768x24 -ac -listen tcp -nocursor &

sleep 2

(
  while true; do
    xeyes &
    xeyes_pid=$!
    sleep 1
    kill $xeyes_pid
  done
) &

picom
