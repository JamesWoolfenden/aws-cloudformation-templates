resource "aws_cloudwatch_metric_alarm" "NeptunePrimarySparqlRequestsPerSecAlarm" {
  alarm_name                = "NeptunePrimarySparqlRequestsPerSecAlarm"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 2
  metric_name               = "SparqlRequestsPerSec"
  namespace                 = "AWS/Neptune"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = var.SparqlRequestsPerSecThreshold
  actions_enabled           = false
  insufficient_data_actions = []
  ok_actions                = []
  dimensions = {
    DBClusterIdentifier = aws_neptune_cluster.NeptuneDBCluster.cluster_identifier
  }
  alarm_description = "${var.Env}-${var.AppName} primary DB Sparql Requests Per Second"
  alarm_actions     = []
}
