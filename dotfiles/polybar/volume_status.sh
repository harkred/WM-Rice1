#!/bin/bash

# Get the current volume percentage for the default sink
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%')

# Check if sound is muted
muted=$(pactl get-sink-mute @DEFAULT_SINK@ | grep -o "yes")

# Set icon or prefix based on the volume level or muted status
if [ "$muted" == "yes" ]; then
    echo "🔇 Muted"  # Icon for muted
elif [ "$volume" -ge 50 ]; then
    echo "🔊 $volum%"  # Icon for high volume
elif [ "$volume" -ge 30 ]; then
    echo "🔉 $volume%"  # Icon for medium volume
elif [ "$volume" -gt 0 ]; then
    echo "🔈 $volume%"  # Icon for low volume
else
    echo "🔇 0%"  # Icon for volume at 0%
fi
