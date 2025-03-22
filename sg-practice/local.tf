locals {
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    backend_sg_id = data.aws_ssm_parameter.backend_sg_id.value
}