
resource "aws_ssm_parameter" "app_alb_listener_arn" { #ec2->load balancer->expense-dev-app-alb->HTTP80
  name  = "/${var.project_name}/${var.environment}/app_alb_listener_arn"
  type  = "String"
  value = aws_lb_listener.http.arn
}