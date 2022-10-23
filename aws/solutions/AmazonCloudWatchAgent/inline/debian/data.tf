data "aws_key_pair" "example" {
  key_name           = ""
  include_public_key = true

  filter {
    name   = "tag:Component"
    values = ["web"]
  }
}
