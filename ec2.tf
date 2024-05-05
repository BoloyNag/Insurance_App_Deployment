terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  shared_credentials_files=["/root/.aws/credentials"]
}

resource "aws_instance" "jenkins_server" {
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
tags = {
    Name = "jenkins_server"
  }
}
