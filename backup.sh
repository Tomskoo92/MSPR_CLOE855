#!/bin/bash

DB_PATH="/home/tomm/www/flask1/database.db"
BACKUP_PATH=" /home/tomm/www/flask1/backup"
DATE=$(date +"%Y%m%d%H%M")
BACKUP_FILE="database_backup_$DATE.db"
REMOTE_USER="tomm"
REMOTE_HOST="185.31.40.87"
REMOTE_PATH="/backup/"

# Copier DB
cp $DB_PATH $BACKUP_PATH/$BACKUP_FILE

# Envoie du fichier 
scp -i ~/.ssh/id_rsa_backup $BACKUP_PATH/$BACKUP_FILE $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH
