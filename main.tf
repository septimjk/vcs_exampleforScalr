terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "scalr" {
  ami                    = "ami-0dc5e9ff792ec08e3"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0606418852dd6989a"
  vpc_security_group_ids = ["sg-0337fde30cc27a51c"]
  key_name               = "keyDemo"
}
