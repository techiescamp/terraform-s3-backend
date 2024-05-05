resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-dcube"
  acl = "private"
  versioning {
    enabled = true
  }
}