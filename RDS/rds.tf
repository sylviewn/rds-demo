provider "aws" {
    region = "us-east-1"
}

resource "aws_db_instance" "default" {
  allocated_storage = 10
  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db_t3.micro"
  name              = "mydb"
  username          = "foo"
  password          = "foobarbaz"
  parameter_group_name = "default.mysql15.7"
  skip_final_snapshot = true
}
