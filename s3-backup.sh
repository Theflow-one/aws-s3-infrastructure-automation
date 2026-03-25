#!/bin/bash
# High-Value Automation: S3 Sync with Governance
BUCKET_NAME="amzn-s3-juniordev-task-01"
LOG_FILE="/home/ubuntu/s3-backup.log"

echo "--- Backup Started: $(date) ---" >> $LOG_FILE

# The "Senior" Sync: Optimized for speed, security, and cost
/usr/local/bin/aws s3 sync /home/ubuntu/ s3://$BUCKET_NAME/production-backup/ --exclude ".ssh/*" --exclude ".aws/*" --exclude "awscliv2.zip" --exclude "aws/*" --exclude ".cache/*" --delete >> $LOG_FILE 2>&1



