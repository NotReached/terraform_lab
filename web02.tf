resource "aws_instance" "web02" {
  ami                 = var.AL2x64
  instance_type       = var.vmsize
  security_groups     = [aws_security_group.labs-ssh.id,aws_security_group.labs-web.id]
  key_name            = aws_key_pair.lab.id
  subnet_id           = aws_subnet.lab.id

}