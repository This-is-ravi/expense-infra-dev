data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id" 
  # this wil fetch the vpc id value from aws->ssm->all parameters stored
}