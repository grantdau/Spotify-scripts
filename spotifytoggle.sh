#!/bin/bash

# sudo apt install playerctl


# Log file path
LOGFILE="/home/computer/Documents/log_files/spotifytoggle.log"

# Redirect output and errors to logfile
exec > "$LOGFILE" 2>&1

echo "Running toggle_play_pause function"

# Check if Spotify is running
if ! pgrep -x "spotify" > /dev/null; then
    echo "Spotify is not running."
    exit 1
fi

# Check current playback status using playerctl
STATUS=$(playerctl status)

echo "Current playback status: $STATUS"

if [ "$STATUS" = "Playing" ]; then
    echo "Pausing Spotify"
    playerctl pause
elif [ "$STATUS" = "Paused" ]; then
    echo "Playing Spotify"
    playerctl play
else
    echo "Spotify is not in a recognizable state or playback status is unknown."
    exit 1
fi

