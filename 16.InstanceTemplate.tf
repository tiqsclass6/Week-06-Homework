//6. Launch template for ec2 instance
resource "aws_launch_template" "EC2_Launch_Template" {
  name                          = "EC2-Launch-Template"
  image_id                      = aws_ami_from_instance.example_ami.id
  instance_type                 = "t2.micro"

  network_interfaces {
    associate_public_ip_address = false
    security_groups             = [aws_vpc.VPC-A-SaoPaulo-Prod.id]
  }

  user_data = filebase64("userdata.sh")

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "custom-ec2-web-server"
    }
  }
}