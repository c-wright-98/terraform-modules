resource "aws_instance" "web_servers" {
  count         = var.instance_count
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type

  tags = {
    Name = "WebServer-${count.index}"
  }
}

output "instance_ids" {
  value = aws_instance.web_servers[*].id
}
