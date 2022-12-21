terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAX4LBITSSPJPKHGDO"
  secret_key = "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"

}



resource "aws_db_instance" "myrds"{
    engine = "mysql"
    engine_version = "8.0.28"
    allocated_storage = 400
    instance_class = "db.m5d.xlarge"
    username = "admin"
    password = "Venkateswara799"
    publicly_accessible = true
    skip_final_snapshot = true


    tags = {
        Name = "MyRDS"
    }
}

