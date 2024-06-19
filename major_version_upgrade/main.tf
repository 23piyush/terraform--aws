# create rds db using terraform
resource "aws_db_instance" "myrds" {
  engine              = "mysql"
  #engine_version = "5.7"
  engine_version      = "8.0"
  #allocated_storage = 5
  allocated_storage = 10
  storage_type        = "gp2"
  identifier          = "mydb"
  username            = "admin"
  password            = "Password!123"
  instance_class      = "db.t3.micro"
  publicly_accessible = true
  skip_final_snapshot = true
  tags = {
    team = "DE"
  }

  apply_immediately = true
  allow_major_version_upgrade = true
  # auto_minor_version_upgrade = false

}