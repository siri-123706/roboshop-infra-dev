locals {
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    private_subnet_id = split("," ,data.aws_ssm_parameter.private_subnet_ids.value)[0]
    ami_id = data.aws_ami.joindevops.id
    catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
    # backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value

    common_tags = {
        project = var.project
        Enviornment = var.environment
        Terraform = "true"
    }

}