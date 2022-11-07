resource "aws_lb" "loadBalancer" {
  ip_address_type= "ipv4"
  name           = "loadBalancer"
  security_groups = []

  subnet_mapping {
    subnet_id     = ""
    allocation_id = ""
  }
  subnet_mapping {
    subnet_id     = ""
    allocation_id = ""
  }
  subnets        = []
  load_balancer_type="network"
}
