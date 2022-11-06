resource "aws_elb" "ElasticLoadBalancer" {
  name= "ElasticLoadBalancer"
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
  access_logs {
    bucket        = ""
    bucket_prefix = "Logs"
    interval      = 60
  }
  health_check {
    healthy_threshold   = 3
    unhealthy_threshold = 5
    timeout             = 5
    target              = "HTTP:80/"
    interval            = 30
  }
  instances                   = []
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining="{true 0xc0002f3f38   [] map[] }
  connection_draining_timeout="{true 0xc0002f3f38   [] map[] }
  listener {
    instance_port    = 80
    #guessed
    instance_protocol= "HTTP"
    lb_port          = 80
    lb_protocol      = "HTTP"
    ssl_certificate_id=""
  }
}