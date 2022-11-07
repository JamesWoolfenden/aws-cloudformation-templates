resource "aws_lb_target_group" "TargetGroup" {
  health_check {
    enabled=false
    port = "10"
    }
  name= "MyTargets"
  port= 10
  protocol= "TCP"
}
