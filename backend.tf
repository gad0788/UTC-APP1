# create an s3 bucket for the state file and a dynamodb table for the state file lock
terraform {
  backend "s3" {
    bucket         = "wk10-gn-terraform"
    key            = "ALB/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "statefile-log"
  }
}