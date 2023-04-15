
resource "aws_instance" "frontend" {
  ami           = "ami-038face4e75b6a399"
  instance_type = "t2.micro"
  key_name      = "sudhakar"
  root_block_device {
    delete_on_termination = true
    volume_size = "8"
    volume_type = "gp2"
  }

  tags = {
    Name = "frontend-cicd-terraform"
  }
}

# resource "aws_s3_bucket" "backend" {
#   bucket = "sudhakar-venu-sudhakar"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }
