Error: creating RDS DB Instance (mydb): InvalidParameterCombination: Cannot find version 8.0.27 for mysql
│       status code: 400, request id: da493faf-a039-436f-8ec6-c8de69313146
│ 
│   with aws_db_instance.myrds,
│   on main.tf line 2, in resource "aws_db_instance" "myrds":
│    2: resource "aws_db_instance" "myrds" {

Solution: Created a subnet in "us-east-1b" availability-zone.    