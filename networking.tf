resource "aws_vpc" "lab" {
  cidr_block = "192.168.238.0/24"
}

resource "aws_subnet" "lab" {
  vpc_id     = aws_vpc.lab.id
  cidr_block = "192.168.238.0/24"
}