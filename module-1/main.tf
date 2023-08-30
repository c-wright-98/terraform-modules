resource "aws_instance" "web_servers" {
  count         = var.instance_count
  ami           = "ami-0eb260c4d5475b901"
  instance_type = var.instance_type

  tags = {
    Name = "WebServer-${count.index}"
  }
}
