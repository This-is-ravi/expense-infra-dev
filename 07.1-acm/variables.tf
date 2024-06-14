variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
    Component = "app-alb"
  }
}

variable "zone_name" {
  default = "csvdaws78s.online"
}

variable "zone_id" {
  default = "Z05538612YG6UWTYOZ1BD" #r53 
}