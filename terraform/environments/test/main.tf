variable aws_access_key{}
variable aws_secret_key{}
provider "aws" {
  region = "us-east-1"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}


module "create_infra" {
  source = "../../modules/module"
}