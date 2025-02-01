#Automates backup of critical directories, databases, or configurations.Compresses and stores backups on a remote server or cloud.
#!/bin/bash
# Backup important directories
BACKUP_DIR="/var/www"
DEST="/backup/$(date +'%Y%m%d')"
mkdir -p $DEST
tar -czf $DEST/backup.tar.gz $BACKUP_DIR
# Upload to remote server
scp $DEST/backup.tar.gz user@remote:/path/to/backup
