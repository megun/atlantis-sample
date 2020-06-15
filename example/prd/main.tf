resource "aws_s3_bucket" "prod" {
  bucket = "megun-atlantis-a-prod"
  acl    = "private"

  tags = {
    Environment = "prod"
  }
}
