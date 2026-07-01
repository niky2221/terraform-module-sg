module "mysql_sg" {
    source = "../sg.tf"
    project = var.project
    environment = var.environment
    sg_name  =  "mysql"
    sg_description = "mysql instance security group"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags

  
}