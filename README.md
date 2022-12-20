# terraform-eks-ecr-rds
Terraform files to provision eks, ecr, and rds<br />


# Step 1. EKS. 
cd into /eks
```
terraform init
terraform plan
teraform apply
```


# Step 2. RDS. 
cd into /rds<br />
Get the security group in AWS console with "eks-cluster" in the name and assign the id in rds terraform tfvars<br />
Get the public subnet ids in this cluster and assidn to subnet_ids array in terraform.tfvar<br />
```
terraform init
terraform plan
teraform apply
```

open the port 3306 in the EC2's security groups that we assign


# Step 3. ECR. 
cd into /ecr/dev-ecr
```
terraform init
terraform plan
teraform apply
```

