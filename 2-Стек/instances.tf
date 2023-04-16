# It needs generate ssh-keygen 

provider "aws" {
  region = "us-east-2"
}

resource "aws_key_pair" "public_key" {
  key_name   = "public_key"
  public_key = file(var.PUB_KEY)
}

resource "aws_instance" "DNS1" {
  ami                    = "ami-06c4532923d4ba1ec"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.public_key.key_name
  availability_zone      = "us-east-2a"
  vpc_security_group_ids = [aws_security_group.dns-SG.id]
  
   tags = {
     Name = "DNS1"
   }
}

resource "aws_security_group" "dns-SG" {

  name = "dns-SG"

  ingress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "dns-SG"
  }
}

variable "PRI_KEY" {
  default = "dns"
}
variable "PUB_KEY" {
  default = "dns.pub"
}


