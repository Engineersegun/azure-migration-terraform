# Migration Workflow

1. **Environment Setup**: Configured AWS IAM roles and installed the AWS Replication Agent on the Azure source server.
2. **Replication Phase**: Monitored the transfer of 250 GiB of data over the network.
3. **Launch Template Configuration**: Updated the EC2 Launch Template to use a custom SSH Key Pair for secure access.
4. **Test & Verification**: Launched a test instance, verified disk mounting via terminal, and checked application logs.
5. **Cutover & Finalization**: Performed the final cutover and marked the server as "Ready for Cutover" in the AWS Console.
