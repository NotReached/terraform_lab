resource "aws_lb" "nlb01" {
  name               = "lab-lb-01"
  internal           = false
  load_balancer_type = "network"
  subnets            = [aws_subnet.lab.id]
  depends_on         = [aws_internet_gateway.lab]
  }