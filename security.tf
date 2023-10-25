## Security Group
resource "aws_security_group" "sg1" {
    name = "webserver-sg-dev"
    description = "Allow ssh and httpd"
    vpc_id = aws_vpc.vpc1.id

    ingress {
        description = "Allow ssh"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    
    }

    ingress  {
        description = "Allow httpd"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
 egress {
        description = "Allow httpd"
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        env = "Dev"
    }
  
}