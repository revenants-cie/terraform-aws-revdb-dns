output "zone" {
    description = "Will output the entire data on the zone, including ID, name servers, tags."
    value = aws_route53_zone.zone
}

output "zone_id" {
    description = "Prints the zone id of the domain created."
    value = aws_route53_zone.zone.zone_id
}
