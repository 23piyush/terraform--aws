# Get latest snapshot from production db
data "aws_db_snapshot" "db_snapshot" {
    most_recent = true
    db_instance_identifier = "mydb"
}

# Create new staging db
resource "aws_db_instance" "myrds" {
  engine              = "mysql"
  engine_version      = "8.0"
  allocated_storage = 5
  storage_type        = "gp2"
  snapshot_identifier = "${data.aws_db_snapshot.db_snapshot.id}"
  identifier          = "mydb"
  username            = "admin"
  password            = "Password!123"
  instance_class      = "db.t2.micro"
  publicly_accessible = true
  skip_final_snapshot = true
  tags = {
    team = "DE"
  }
}
