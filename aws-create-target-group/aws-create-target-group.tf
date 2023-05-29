
resource "aws_lb_target_group" "camas-sec-tgt-group" {
    name = ""
    port = ""
    protocol = ""
    vpc_id = ""

    health_check {
       
        path = "/"
        protocol = "HTTPS"
        timeout = 5
        interval = 60
        healthy_threshold = 2
        unhealthy_threshold = 2

    }
}