# terraform-eks-ecr-rds
Terraform files to provision eks, ecr, and rds. 


# Step 1. EKS. 
cd into eks. 
terraform init__
terraform plan__
teraform apply__ 


# Step 2. RDS. 
cd into rds. 
Get the security group in AWS console with "eks-cluster" in the name and assign the id in rds terraform tfvars__
Get the public subnet ids in this cluster and assidn to subnet_ids array in terraform.tfvars__
terraform init__
terraform plan__
teraform apply__

open the port 3306 in the EC2's security groups that we assign


# Step 3. ECR. 
terraform init__
terraform plan__
teraform apply__

