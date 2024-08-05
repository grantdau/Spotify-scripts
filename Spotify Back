#!/bin/bash

# Define log file location
LOGFILE="/home/computer/Documents/log_files/spotifyback.log"

# Redirect output and errors to logfile
exec > "$LOGFILE" 2>&1

echo "Running previous_track function"

# Check if Spotify is running
if ! pgrep -x "spotify" > /dev/null; then
    echo "Spotify is not running."
    exit 1
fi

# Go back to the previous track in Spotify using dbus-send
echo "Sending dbus command to go back to previous track"
dbus-send --session --type=method_call --dest=org.mpris.MediaPlayer2.spotify \
    /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous

