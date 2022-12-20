module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "18.26.6"

  
  cluster_name    = local.cluster_name # from main.tf
  cluster_version = "1.22"

  vpc_id     = module.vpc.vpc_id # from vpc.tf


  #subnet_ids = module.vpc.public_subnets
  subnet_ids = setunion(
    module.vpc.private_subnets,
    module.vpc.public_subnets,
  )
  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"

    attach_cluster_primary_security_group = true

    # Disabling and using externally provided security groups
    create_security_group = false
  }

  eks_managed_node_groups = {
    one = {
      name = "node-group-1"

      instance_types = ["t3.small"]
      
      # number of nodes we want in a group
      min_size     = 1
      max_size     = 3
      desired_size = 2

      pre_bootstrap_user_data = <<-EOT
      echo 'foo bar'
      EOT

      vpc_security_group_ids = [
        aws_security_group.node_group_one.id # from security-groups.tf resource
      ]
    }

    two = {
      name = "node-group-2"

      instance_types = ["t3.medium"]
      # instances size
      min_size     = 0
      max_size     = 2
      desired_size = 0

      pre_bootstrap_user_data = <<-EOT
      echo 'foo bar'
      EOT

      vpc_security_group_ids = [
        aws_security_group.node_group_two.id
      ]
    }
  }
}
