resource "aws_route53_zone" "zone" {
    name = var.domain_name
    lifecycle {
        prevent_destroy = true
    }
}

resource "aws_route53_record" "records" {
    for_each = var.records
    zone_id = aws_route53_zone.zone.zone_id
    name = ""
    type = each.key

    records = each.value

    ttl = var.dns_record_ttl
}




