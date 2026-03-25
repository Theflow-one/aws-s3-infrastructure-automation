# AWS S3 Infrastructure Automation & Governance

## Executive Summary
This project implements a **Self-Healing Backup Pipeline** on Ubuntu 24.04, orchestrating data persistence between EC2 and S3. It moves beyond simple file copying into **Systems Engineering** by enforcing security governance and storage optimization.

## Key Technical Features
* **Zero-Touch Automation:** Orchestrated via `crontab` for daily 02:00 UTC execution.
* **Cloud Governance:** Explicitly excludes sensitive metadata (`.ssh`, `.aws`) to prevent credential leakage.
* **Storage Optimization:** Uses the `--delete` flag for exact mirroring and filters out non-essential binaries (`aws/` installation files) to reduce S3 costs.
* **Observability:** Implements persistent logging with `2>&1` error redirection for automated health checks.

## Architecture
- **Environment:** AWS EC2 (Ubuntu 24.04)
- **Target:** AWS S3 (Standard Storage)
- **Logic:** Bash / AWS CLI v2
- **Scheduler:** Linux Cron

## How to Use
1. Ensure AWS CLI is configured with an IAM Role (Least Privilege).
2. Make the script executable: `chmod +x s3-backup.sh`.
3. Schedule the job: `crontab -e`.
