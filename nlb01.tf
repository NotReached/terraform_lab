resource "aws_lb" "nlb01" {
  name               = "lab-lb-01"
  internal           = false
  load_balancer_type = "network"
  subnets            = [aws_subnet.lab.id]
  
  subnet_mapping {
    subnet_id            = aws_subnet.lab.id
    private_ipv4_address = aws_instance.web01.id
  }
  subnet_mapping {
    subnet_id            = aws_subnet.lab.id
    private_ipv4_address = aws_instance.web02.id
  }
  }