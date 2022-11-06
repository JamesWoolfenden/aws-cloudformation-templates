resource "aws_cloudfront_distribution" "WebsiteCDN" {
  aliases = [var.DNSName]
  comment = "CDN for S3-backed website"
  default_cache_behavior {
    allowed_methods = []
    cached_methods  = []
    compress        = false
    forwarded_values {
      headers                 = []
      query_string            = true
      query_string_cache_keys = []
      cookies {
        forward = "all"
      }
    }
    smooth_streaming       = false
    target_origin_id       = "only-origin"
    viewer_protocol_policy = "allow-all"
  }
  default_root_object = "index.html"
  enabled             = true
  is_ipv6_enabled     = false
  origin {
    domain_name = ".s3-website-us-east-1.amazonaws.com"
    origin_id   = "only-origin"
    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"
      origin_ssl_protocols   = []
    }
  }
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  viewer_certificate {
  }
}
