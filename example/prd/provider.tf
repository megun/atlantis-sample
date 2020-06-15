provider "aws" {
  profile = "prod"
  region  = "ap-northeast-1"

  assume_role {
    role_arn     = "arn:aws:iam::111111111111:role/megun002"
  }
}
