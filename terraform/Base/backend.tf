#terraform {
#  backend "s3" {
#    bucket         = "simonrycroft-terraform-practice"
#    key            = "shared/terraform.tfstate"
#    region         = "eu-west-2"
#    encrypt        = true
#    dynamodb_table = "terraform-lock"
#  }
#}

