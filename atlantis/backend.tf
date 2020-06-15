terraform {
  backend "s3" {
    bucket = "megun-atlantis-sample-tfstate"
    key    = "terraform.tfstate/main"
    region = "ap-northeast-1"
    encrypt = true
    #dynamodb_table = "atlantis-sample-tflock-common"
  }
}
