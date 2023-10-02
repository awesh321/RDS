provider "aws" {
  region = "us-east-1"    
    
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type        = "gp2"
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  username            = "admin"
  password            = "Awesh123!" 
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = true
  backup_retention_period = 0 
}
