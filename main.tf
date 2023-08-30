provider "aws" {
    region = "eu-west-2"
}

module "ec2_instance" {
  source = "./module-1"

  instance_count = 2
  instance_type  = "t2.micro"
}
