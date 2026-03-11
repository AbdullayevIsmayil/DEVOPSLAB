

#!/bin/bash

SOURCE_DIR="$HOME/myfolder"
BACKUP_DIR="$HOME/backups"

mkdir -p "$BACKUP_DIR"

DATE=$(date +%Y%m%d)
ARCHIVE_NAME="myfolder_backup_$DATE.tar.gz"

echo "Starting backup of $SOURCE_DIR to $BACKUP_DIR/$ARCHIVE_NAME ..."
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"

if [[ $? -eq 0 ]]; then
	echo "Backup completed successfully! ✅"
	echo "Backup file created: $BACKUP_DIR/$ARCHIVE_NAME"
else
    echo "Backup failed ❌"
fi

