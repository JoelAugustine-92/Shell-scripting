#!/bin/bash
SOURCE_DIR="hlo"
BACKUP_DIR="ho"
mkdir -p "$BACKUP_DIR"
BACKUP_FILE="${BACKUP_DIR}/documents_backup_${TIMESTAMP}.tar.gz"
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"
echo "successfully completed"

