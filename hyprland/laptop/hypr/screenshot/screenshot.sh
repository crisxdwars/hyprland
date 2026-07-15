#!/bin/bash

LOCK_FILE="/tmp/screenshot.lock"
SCREENSHOT_DIR="$HOME/Pictures/Screenshots"

if [ -e "$LOCK_FILE" ]; then
    exit 1
fi

touch "$LOCK_FILE"

FILENAME="$(date +%s_grim.png)"
grim -g "$(slurp)" "$SCREENSHOT_DIR/$FILENAME" && wl-copy < "$SCREENSHOT_DIR/$FILENAME"

rm "$LOCK_FILE"
trap 'rm -f "$LOCK_FILE"' EXIT
