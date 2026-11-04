#!/bin/bash
SOURCE_DIR="/var/www/html"
READY_MADE_ARCHIVES="/home/ubuntu/backups"
BACKUP_FILE="backup-$(date +%Y-%m-%d).tar.gz"
mkdir -p $READY_MADE_ARCHIVES
tar -czvf $READY_MADE_ARCHIVES/$BACKUP_FILE $SOURCE_DIR
LOG_DIR="/var/log/nginx"
tar -czvf $READY_MADE_ARCHIVES/$BACKUP_FILE $SOURCE_DIR $LOG_DIR
