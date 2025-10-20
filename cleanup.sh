#!/bin/bash
# Temporary Files Cleanup

echo "=== Cleaning Temporary Files ==="

# Очищаем временные файлы в разных местах
echo "Cleaning /tmp files older than 7 days..."
find /tmp -type f -mtime +7 -delete 2>/dev/null

echo "Cleaning current directory backup files..."
find ~/backups -name "*.tar.gz" -type f -mtime +3 -delete 2>/dev/null

echo "Cleaning log files in project..."
find . -name "*.log" -type f -mtime +7 -delete 2>/dev/null

echo "Cleanup completed"
