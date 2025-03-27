module "vpc" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/gajuladeepak/terraform-aws-vpc.git?ref=main"
    # project_name = "expense"
    # environment = "dev"     #instead of keeping here placing them variable file and passing its reference here

    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_requried = var.is_peering_requried
}   