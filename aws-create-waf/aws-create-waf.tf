
provider "aws" {
    region = "us-west-2"
}

resource "aws_waf_web_acl" "web_acl" {
    name = "camas-sec-acl"
    metric_name = "camas-sec-acl"

    rule {
        name = "camas-sec-waf-acl-1"
        priority = 1
    }

    statement {
        byte_match_statement {
            field_to_match {
                type = "URI"
            }

            text_transformations {
            type = "REGEX_MATCH"
            regex_pattern_set_id = "${aws_waf_regex_pattern_set.pattern_set.id}"
            regex_pattern_string = "/admin"
        }

        }

    action {
        block {}
    }
  }

   resource "aws_waf_regex_pattern_set" "pattern_set" {
    name = "camas-sec-regex-pattern-set"
    regex_pattern_strings = ["/admin"]
   }

    resource "aws_waf_ipset" "ip_set_reference" {
        name = "camas-sec-ip-list"
        ip_set_descriptors = [
            {
                type = "IPV4"
                value = "52.131.82.100"
            }
        ]
    }

    resource "aws_waf_ipset_reference" "ip_set_reference" {
        priority = 10
        ip_set_id = "${aws_waf_ipset.cams-sec-ip-list.id}"
        web_acl_id = "${aws_waf_web_acl.web_acl_id}"
    }
}