resource "aws_s3_bucket" "remote_state" {
  bucket = "simonrycroft-terraform-practice"
  acl    = "private"

  tags = {
    Name        = "Terraform Remote State"
    Environment = "Dev"
  }
}
