provider "aws" {
  access_key = "${var.TF_VAR_aws_access_key_id}"
  secret_key = "${var.TF_VAR_aws_secret_access_key}"
  region     = "${var.aws_region}"
}
