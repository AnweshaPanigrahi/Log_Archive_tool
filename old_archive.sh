#!/bin/bash

# Directory where logs are stored
LOG_DIR="./logs"

# Directory where archives will be stored
ARCHIVE_DIR="$LOG_DIR/archive"
mkdir -p "$ARCHIVE_DIR"

# Find logs older than 7 days
FILES_TO_ARCHIVE=$(find "$LOG_DIR" -maxdepth 1 -name "*.log" -type f -mtime +7)

# Check if any file was found
if [ -z "$FILES_TO_ARCHIVE" ]; then
  echo "No old log files to archive."
  exit 0
fi

# Archive file name
ARCHIVE_FILE="$ARCHIVE_DIR/old_logs_$(date +%F).tar.gz"

# Archive and print file names
echo "Archiving the following files:"
for file in $FILES_TO_ARCHIVE; do
  echo "  - $(basename "$file")"
done

# Create archive
tar -czf "$ARCHIVE_FILE" $FILES_TO_ARCHIVE

echo "Archived files into $(basename "$ARCHIVE_FILE")"
