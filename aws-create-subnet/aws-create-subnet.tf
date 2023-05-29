
resource "aws_subnet" "camas-sec-subnet-1" {
    vpc_id = "vpc-0877852a3ded87b43"
    cidr_block = "10.130.10.0/28"
    availability_zone = "us-west-1b"

    tags = {
        Name = "camas-sec-subnet-1"
    }
}