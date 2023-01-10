# Provisioning AWS EKS, ECR, RDS using Terraform
Terraform files to provision AWS eks, ecr, and rds<br />

# PREREQUISITES<br />
## Step 1. Install and Download AWS CLI<br /> 
Install and download AWS CLI. Mac user can use this: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli


## Step 2. Step 2 Login to amazon using access key from AWS console<br /> 
Go to account —> my security credentials.
Create access key. 
then type this on your mac terminal:
  aws configure 
  
and enter the information required:

# PROVISIONING <br />
## 1. EKS<br /> 
cd into /eks
```
terraform init
terraform plan
teraform apply
```


## 2. RDS<br />
cd into /rds<br />
Get the security group in AWS console with "eks-cluster" in the name and assign the id in rds terraform tfvars<br />
Get the public subnet ids in this cluster and assign to subnet_ids array in terraform.tfvar<br />
```
terraform init
terraform plan
teraform apply
```

open the port 3306 in the EC2's security groups that we assign


## 3. ECR<br />
cd into /ecr/dev-ecr
```
terraform init
terraform plan
teraform apply
```

