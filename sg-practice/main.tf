module "mysql_sg" {
    source = "../terraform-aws-security-group"
    project_name = "expense"
    environment = "dev"
    vpc_id = local.vpc_id
    sg_name = "mysql"
    common_tags = {}
    sg_tags = {}
}

resource "aws_security_group_rule" "mysql_backend" {
    type ="ingress"
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    source_security_group_id = module.backend_sg.id
    security_group_id = module.mysql_sg.id
}