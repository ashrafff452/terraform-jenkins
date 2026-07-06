terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {

  ami           = "ami-0521cb2d60cfbb1a6"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-jenkins"
  }
}
