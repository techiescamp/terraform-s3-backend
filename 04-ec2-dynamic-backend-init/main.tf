terraform {
  backend "s3" {
  }
}

resource "aws_instance" "terraform-state-test" {
  ami           = "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"
  key_name      = "techiescamp"
}

