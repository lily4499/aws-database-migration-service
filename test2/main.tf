provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

resource "aws_db_instance" "my_database" {
  identifier           = "target-db"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7" # Replace with your desired MySQL version
  instance_class       = "db.t3.micro" # Replace with your desired instance type
  username             = "admin" # Replace with your desired username
  password             = "abc123abc" # Replace with your desired password
  parameter_group_name = "default.mysql5.7" # Replace with your desired parameter group

  # Replace with your preferred settings for the following parameters if needed
  skip_final_snapshot = true
  publicly_accessible = true
}

output "rds_endpoint" {
  value = aws_db_instance.my_database.endpoint
}


