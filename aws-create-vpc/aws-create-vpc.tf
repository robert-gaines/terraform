provider "aws" {
    region = ""
}

resource "aws_vpc" "camas-sec-vpc" {
    cidr_block = ""
    tags = {
        Name = ""
    }
}

/* */

/*
output "vpc_id" {
    value = "${aws_vpc.'vpc-name'.id}"
}
*/

