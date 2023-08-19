terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

resource "aws_ec2_host" "test" {
  ami               = "ami-08a52ddb321b32a8c"  
  instance_type     = "t2.micro"
  availability_zone = "us-east-1"
  name              = "test-instance"
}

