provider "aws" {
    region = "us-east-2"
}

resource "aws_db_instance" "teste_TF"{
    allocated_storage = 20
    engine = var.engine
    instance_class = var.instance_class
    name = var.db_name
    username = var.db_username
    password = var.db_password
    publicly_accessible = true
    skip_final_snapshot = true
}