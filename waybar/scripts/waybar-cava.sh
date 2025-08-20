#!/bin/bash

MAX_BARS=15  # max bars to display
SPACING=" "  # space character between bars

# ... [previous initialization code] ...

cava -p ~/.config/cava/config | while read -r line; do
    bars=""
    line=${line//;/ }
    arr=($line)
    # pick only the first MAX_BARS numbers
    arr=("${arr[@]:0:$MAX_BARS}")
    
    # Process each bar with smoothing
    for n in "${arr[@]}"; do
        # prev=${PREVIOUS_LEVELS[$i]}
        
        # ... [smoothing code] ...
        
        # Convert the smoothed value to a character
        if ((n >= 90)); then
            bars="${bars}█${SPACING}"
        elif ((n >= 70)); then
            bars="${bars}▆${SPACING}"
        elif ((n >= 50)); then
            bars="${bars}▄${SPACING}"
        elif ((n >= 30)); then
            bars="${bars}▃${SPACING}"
        elif ((n >= 10)); then
            bars="${bars}▂${SPACING}"
        elif ((n >= 0)); then
            bars="${bars}▁${SPACING}"
        else
            bars="${bars} ${SPACING}"
        fi
    done
    
    # Remove trailing space
    bars="${bars%$SPACING}"
    echo "{\"text\":\"$bars\", \"class\":\"cava\"}"
done