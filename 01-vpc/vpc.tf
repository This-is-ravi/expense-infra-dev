module "vpc" {     # this r mandatory values that we need to supply here
    #source = "../terraform-aws-vpc" # now we r refering this from local, now how to refer this from git
    source = "git::https://github.com/This-is-ravi/terraform-aws-vpc.git?ref=main"
    project_name = var.project_name  
    common_tags = var.common_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = var.is_peering_required
}