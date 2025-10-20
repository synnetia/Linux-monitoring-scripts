#!/bin/bash
echo "=== System Monitor ==="
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo "Memory: "
free -h
echo "Disk usage: "
df -h /
