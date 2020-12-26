RevDB DNS Module
================

Description
-----------

This module helps to maintain domain names, zones and records within Route53.

For a more detailed use case and sample, please take a look at the blog post that's covering the release of this module.

[https://revdb.io/2020/12/24/managing-your-domain-names-zones-and-records-with-terraform/](https://revdb.io/2020/12/24/managing-your-domain-names-zones-and-records-with-terraform/)

Examples
--------

Adding a simple domain name as a route53 zone.

```hcl
module "infrastructureascode_blog" {
  source  = "revenants-cie/revdb-dns/aws"
  domain_name = "infrastructureascode.blog"
}
```

Adding a domain with multiple records attached.

```hcl
module "infrastructureascode_blog" {
  source  = "revenants-cie/revdb-dns/aws"
  domain_name = "infrastructureascode.blog"
  records = {
    A = ["10.10.10.10"],
    TXT = ["google-site-verification=ASDASDASDASDASD"]
  }
}
```

Output
------

```hcl
revdb_io = {
  "comment" = "Managed by Terraform"
  "delegation_set_id" = ""
  "force_destroy" = false
  "id" = "Z3DXXXXXXX"
  "name" = "infrastructureascode.blog."
  "name_servers" = [
    "ns-xxxx.awsdns-04.org",
    "ns-xxx.awsdns-02.co.uk",
    "ns-xx.awsdns-02.com",
    "ns-xxx.awsdns-01.net",
  ]
  "tags" = {}
  "vpc" = []
  "zone_id" = "Z3DXXXXXXX"
}
```
