terraform {
  backend "s3" {
    bucket         = "0674-1131-1679-eu-west-2-terraform-state"
    key            = "shared/terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
