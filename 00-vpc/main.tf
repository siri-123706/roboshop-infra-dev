module "vpc" {
    source = "../../terraform-aws-vpc"
    #source = "git::https://github.com/siri-123706/terraform-aws-securitygroup.git?ref=main"
      
    project = "roboshop"
    environment = var.environment
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = false

}
# output "vpc_ids" {
# value = module.vpc.public_subnet_ids
# }
 
