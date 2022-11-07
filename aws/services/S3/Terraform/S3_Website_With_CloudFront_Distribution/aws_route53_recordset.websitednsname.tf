resource "aws_route53_record" "WebsiteDNSName" {
  zone_id                          = var.HostedZone
  name                             = var.DNSName
  type                             = "CNAME"
  ttl                              = 900
  records                          = []
  multivalue_answer_routing_policy = false
}
