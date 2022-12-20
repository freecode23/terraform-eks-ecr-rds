# 1. A DB parameter group acts as a container for engine configuration values that are applied to one or more DB instances
resource "aws_db_parameter_group" "jobdashboard-pg" {
  name = var.db_name
  family = "mysql5.7"

}

# 2. subnet (range of ips). we will assign with the ones we created in vpc
resource "aws_db_subnet_group" "jobdashboard-sg" {
  name = var.db_name
  subnet_ids = var.subnet_ids
  tags = {
    Name = "My DB subnet group"
  }
}

# 3. db instance
resource "aws_db_instance" "rds_db" {

  identifier = var.db_identifier
  port = var.db_port
  instance_class = var.instance_class
  allocated_storage = 20
  engine = "mysql"
  engine_version = "5.7"
  username = "root"
  password = var.db_password
  db_subnet_group_name = aws_db_subnet_group.jobdashboard-sg.name # from line 1
  vpc_security_group_ids = var.security_groups
  parameter_group_name = aws_db_parameter_group.jobdashboard-pg.name # from line 9
  publicly_accessible = true
  skip_final_snapshot = true
}