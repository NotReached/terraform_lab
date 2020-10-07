resource "aws_instance" "web02" {
  ami                 = var.AL2x64
  instance_type       = var.vmsize
  security_groups     = ["${var.ssh-sg}","${var.webserver-sg}"]
  key_name            = var.motile-key
}