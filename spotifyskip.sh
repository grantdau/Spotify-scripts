#!/bin/bash

LOGFILE="/home/computer/spotifyskip.log"

# Redirect output and errors to logfile
exec > "$LOGFILE" 2>&1

echo "Running skip_track function"

# Check if Spotify is running
if ! pgrep -x "spotify" > /dev/null; then
    echo "Spotify is not running."
    exit 1
fi

# Skip the current track in Spotify using dbus-send
echo "Sending dbus command to skip track"
dbus-send --session --type=method_call --dest=org.mpris.MediaPlayer2.spotify \
    /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next

