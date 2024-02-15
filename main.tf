resource "aws_instance" "FirstEc2" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "FirstEc2"
  }
}