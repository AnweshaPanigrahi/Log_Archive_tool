#!/bin/bash

LOG_DIR="/home/ubuntu/logs"
ARCHIVE_DIR="$LOG_DIR/archive"
ARCHIVE_NAME="old_logs_$(date +%Y-%m-%d).tar.gz"

# Create archive directory if it doesn't exist
if [ ! -d "$ARCHIVE_DIR" ]; then
    mkdir "$ARCHIVE_DIR"
fi

# Find .log files older than 7 days
OLD_FILES=$(find "$LOG_DIR" -maxdepth 1 -name "*.log" -type f -mtime +7)

# Check if any files found
if [ -n "$OLD_FILES" ]; then
    # Archive the files
    tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" $OLD_FILES

    # Delete the original files
    if [ $? -eq 0 ]; then
        echo "Archived files into $ARCHIVE_NAME"
        rm $OLD_FILES
    else
        echo "Failed to archive files."
    fi
else
    echo "No log files older than 7 days to archive."
fi
