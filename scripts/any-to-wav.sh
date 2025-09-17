#!/bin/sh

if [ $# -eq 0 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

INPUT="$1"
OUTPUT="${INPUT%.*}.wav"

ffmpeg -i "$INPUT" -ar 16000 -ac 1 "$OUTPUT" -y
