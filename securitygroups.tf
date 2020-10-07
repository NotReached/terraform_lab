resource "aws_security_group" "labs-ssh" {
    name        = "allow-ssh-home"
    description = "allows ssh from home"
    vpc_id      = aws_vpc.lab.id

    ingress {
        description = "SSH from VPC"
        from_port   = 0
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["50.29.174.15/32"]
    }
}

resource "aws_security_group" "labs-web" {
    name        = "allow-web"
    description = "allows http/https"
    vpc_id      = aws_vpc.lab.id

    ingress {
        description = "HTTP from everywhere"
        from_port   = 0
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "HTTPS from everywhere"
        from_port   = 0
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}