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
  backend "s3" {
    bucket         = "terraform-state-dcube"
    region         = "us-west-2"
    dynamodb_table = "terraform_state_lock"
    key            = "dev/ec2.tfstate"
    encrypt        = true
  }
}

resource "aws_instance" "terraform-state-test" {
  ami           = "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"
}