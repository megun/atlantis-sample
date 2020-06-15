resource "aws_s3_bucket" "dev" {
  bucket = "megun-atlantis-a-dev"
  acl    = "private"

  tags = {
    Environment = "dev"
  }
}
