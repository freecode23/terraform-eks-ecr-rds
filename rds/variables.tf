variable "db_name" {
  description = "DB parameter group name"
}

variable "db_subnet_name" {
  description = "db subnet group name"
}

variable "subnet_ids" {
  description = "Subnets for RDS"
  type = list
}

variable "security_groups" {
  type        = list
  description = "Security group for RDS"
}

variable "db_identifier" {
  description = "The identifier for rds database"
}

variable "db_port" {
  description = "Port for rds database"
}

variable "instance_class" {
  description = "Databse instance class for rds"
}

variable "db_password" {
  description = "Databse instance password"
}
