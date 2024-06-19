# Import existing rds infrastructure using terraform

resource "aws_db_instance" "myrds" {
  engine              = "mysql"
  engine_version      = "8.0"
  allocated_storage   = 10
  storage_type        = "gp3"
  identifier          = "mydb"
  username            = "admin"
  password            = "Password!123"
  instance_class      = "db.t3.micro"
  publicly_accessible = true
  skip_final_snapshot = true
  tags = {
    team = "DE"
  }
}