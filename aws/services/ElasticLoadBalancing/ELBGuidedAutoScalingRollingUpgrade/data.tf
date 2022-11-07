data "aws_key_pair" "example" {
  key_name           = ""
  include_public_key = true
 }

provider "aws" {
  region="eu-west-2"
}
