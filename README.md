# Terraform
Terraform script to stand up a Kali and Ubuntu server for Cobalt Strike deployments.

*Future update to use ansible to update both systems and configure each system for its usage: Kali -> Cobalt Strike, Ubuntu -> Redirector

# AWS Setup
1. terraform init
2. terraform apply
# Tear Down
1. terraform destroy

# Azure Setup
1. terraform init -upgrade
2. terraform plan -out main.tfplan
3. terraform apply main.tfplan
# Tear Down
1. terraform plan -destroy -out main.destroy.tfplan
2. terraform apply main.destroy.tfplan
