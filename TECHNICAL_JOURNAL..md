# Technical Challenges & Solutions

### 1. The "No Such File" SSH Error
**Problem**: Encountered `No such file or directory` when trying to use the `.pem` key from the Azure terminal.
**Root Cause**: Attempting to access a local file (on my laptop) from a remote terminal session (the Azure VM).
**Solution**: Switched to a **Local VS Code Terminal** to run the SSH command, ensuring the path to the private key was accessible.

### 2. Disk Verification Issues
**Problem**: Needed to confirm if the 220GB and 30GB disks were properly mapped in AWS.
**Solution**: Utilized the `lsblk` command post-migration to verify that all block devices were attached and sized correctly according to the source Azure configuration.

### 3. Data Rescanning Latency
**Problem**: The migration status changed to "Rescanning," preventing an immediate cutover.
**Solution**: Monitored the AWS MGN dashboard for 24 minutes while the block-level consistency check completed, ensuring 100% data health before proceeding.
