module "rds_instance" {
  source = "../"
  region = "us-east-2"
  subnet_ids = [
    "subnet-0e4ada4fa0273cc58",
    "subnet-070cd390b81ed0548",
    "subnet-0862849b2ba6f6037",
  ]
  identifier          = "dbname"
  allocated_storage   = 20
  storage_type        = "gp2"
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  username            = "foo"
  password            = "foobarbaz"
  publicly_accessible = true
  db_access = [
    "0.0.0.0/0"
  ]

}