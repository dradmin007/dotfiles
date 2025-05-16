#!/bin/env bash

ws="$(i3-msg -t get_workspaces \
  | jq '.[] | select(.focused==true).name' \
  | cut -d"\"" -f2)"

notify-send -t 3000 -u normal "WS : $ws"
