terraform {
  backend "s3" {
    bucket = "megun-atlantis-sample-tfstate"
    key    = "terraform.tfstate/example/dev"
    region = "ap-northeast-1"
    encrypt = true
    #dynamodb_table = "atlantis-sample-tflock-common"
  }
}
