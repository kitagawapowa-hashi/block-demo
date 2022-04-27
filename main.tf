//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "ec2_instance" {
  source  = "app.terraform.io/KitagawaCorp/ec2-instance/aws"
  version = "1.13.0"

  ami = 23
  instance_type = "t2.micro"
  name = "block-ec2"
  subnet_id = 12
  vpc_security_group_ids = 1234
}

module "s3_webapp" {
  source  = "app.terraform.io/KitagawaCorp/s3-webapp/aws"
  version = "5.0.0"

  name = "webappKelly"
  prefix = "block"
  region = "us-east-1"
}