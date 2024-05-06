terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {}
}

resource "aws_instance" "terraform-state-test" {
  ami           = "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"
}