#!/bin/bash

# اسم اليوزر
USER_NAME=$(whoami)
echo "Hello $USER_NAME"

# اسم الفايل الجديد
FILE_NAME="${USER_NAME}1100.txt"
touch "$FILE_NAME"
echo "Created file: $FILE_NAME"

# ضغط الفايل
BACKUP_NAME="BACKUP_$(date +'%Y%m%d_%H%M%S').tar.gz"
tar -czf "$BACKUP_NAME" "$FILE_NAME"

echo "Backup created: $BACKUP_NAME"

