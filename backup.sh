#!/bin/bash
# Backup Script for Project

echo "=== Creating Project Backup ==="

# Имя архива с датой
BACKUP_FILE="/home/$(whoami)/backups/project-backup-$(date +%Y%m%d-%H%M).tar.gz"

# Создаем архив текущей папки (исключая сам backup.sh)
tar -czf "$BACKUP_FILE" --exclude="*.tar.gz" --exclude="backup.sh" .

# Проверяем успешность

if [ $? -eq 0 ]; then
    echo "Backup created: $BACKUP_FILE"
    echo "Size: $(du -h "$BACKUP_FILE" | cut -f1)"
else
    echo "Backup failed!"
    exit 1
fi
