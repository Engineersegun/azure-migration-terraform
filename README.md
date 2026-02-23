# Multi-Cloud Migration: Azure to AWS(250 GiB)

## 🚀 Project Overview![migration diagram](https://github.com/user-attachments/assets/5ab71c1b-c62f-4dd1-8ed2-27e0147a974f)

<img width="1366" height="768" alt="Screenshot (248)" src="https://github.com/user-attachments/assets/08ad784d-90cd-4a8b-8faa-b917a375daab" />
<img width="1366" height="768" alt="Screenshot (250)" src="https://github.com/user-attachments/assets/022ae787-f2ff-49c9-997f-7377efce8384" />
<img width="1366" height="768" alt="Screenshot (245)" src="https://github.com/user-attachments/assets/43aed1ad-13ab-4d8f-aec8-1832dd413aed" />



Automated the deployment of a 250GB Linux workload in Azure and successfully migrated the entire server to AWS with zero data loss using AWS Application Migration Service (MGN).

## 🛠 Tech Stack
* **Cloud Providers**: Microsoft Azure (Source), AWS (Target)
* **Migration Tool**: AWS Application Migration Service (MGN)
* **Infrastructure as Code**: Terraform
* **Security**: SSH Key-Pairs, AWS Security Groups, IAM Roles
* **OS/Storage**: Linux (LVM/Standard Partitions), 250GB Total (220GB + 30GB Disks)
  
## 📈 Key Milestones
1. **Infrastructure Deployment**: Provisioned Azure VM (`Standard_D2s_v3`) using Terraform.
2. **Replication Setup**: Installed and configured the AWS Replication Agent on the source Linux VM.
3. **Data Management**: Synchronized 250GB of block-level data across cloud providers.
4. **Cloud Transition**: Configured AWS Launch Templates with custom Security Groups (Port 22 SSH) and instance right-sizing.
   
  ## 🚀 Key Achievements
* **Automated Provisioning**: Used Terraform to deploy the target AWS landing zone.
* **Data Integrity**: Verified the migration of a 220GB primary data disk and a 30GB secondary disk.
* **Zero Corruption**: Successfully moved 250GB of block-level data using continuous replication.
* **Cost Management**: Optimized cloud spend by decommissioning Azure resources immediately post-cutover.
* Reduced migration downtim by using continuous data replication
   
