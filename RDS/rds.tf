provider "aws" {
    region = "us-east-1"
    access_key = "AKIA4E4OAIHNXVWBICLE"
    secret_key = "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"
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