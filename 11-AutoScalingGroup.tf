# 7. Create Auto Scaling Group

resource "aws_autoscaling_group" "EC2_AutoScalingGroup" {
  max_size            = 3
  min_size            = 2
  desired_capacity    = 2
  name                = "EC2_AutoScalingGroup"
  target_group_arns   = [aws_lb_target_group.alb_ec2_tg.arn]
  vpc_zone_identifier = [aws_subnet.vpc-A-private-sa-east-1a.id]
  launch_template {
    id      = aws_launch_template.EC2_Launch_Template.id
    version = "$Latest"
  }

  health_check_type = "EC2"
}