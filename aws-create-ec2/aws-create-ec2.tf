
resource "aws_instance" "" {
    ami = ""
    instance_type = ""
    key_name = ""

    subnet_id = ""
    vpc_security_group_ids = [""]
    private_ip = ""
    associate_public_ip_address = true

    root_block_device {
        volume_size = 250
        volume_type = "gp2"
    }

    tags = {
        Name = ""
        Hostname = ""
    }
}