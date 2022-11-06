resource "aws_autoscaling_group" "WebServerGroup" {
  max_size = 4
  min_size = 2
  name="WebServerGroup"
  availability_zones  = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
  capacity_rebalance= false
  health_check_grace_period=300
  health_check_type      = ""
  launch_configuration   = ""
  load_balancers         = []
  enabled_metrics        = []
  protect_from_scale_in  = false
  target_group_arns=[]
  termination_policies=[]
}
