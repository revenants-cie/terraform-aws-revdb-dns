variable "environment" {
    description = "Environment name. Will be added as tag to resources created by this file."
    default = "prod"
}

variable "tags" {
    description = "Tags to apply to each resource. Follows the key/value format."
    default = {}
}

variable "domain_name" {
    description = "Domain name the module will operate on. The module does not operate on multiple domain names."
}

variable "dns_record_ttl" {
    description = "Sets the TTL value of mx records"
    default = 3600
}

variable "records" {
    description = "Map of type and records to add and maintain."
    type = map
    default = {}
}
