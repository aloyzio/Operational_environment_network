locals {

  mandatory_tag = {
    line_of_business        = "hospital"
    ado                     = "max"
    tier                    = "WEB"
    operational_environment = upper(terraform.workspace)
    tech_poc_primary        = "udu.udu25@gmail.com"
    tech_poc_secondary      = "udu.udu25@gmail.com"
    application             = "http"
    builder                 = "udu.udu25@gmail.com"
    application_owner       = "kojitechs.com"
    vpc                     = "WEB"
    cell_name               = "WEB"
    component_name          = "kojitechs"
  }
}

module "networking" {
    source = "../" # path, [github url]
    vpc_cidr = var.vpc_cidr
    pub_subnet_cidr = var.pub_subnet_cidr
    pub_subnet_az = var.pub_subnet_az
    priv_subnet_cidr = var.priv_subnet_cidr
    priv_subnet_az = ["us-east-1a", "us-east-1b"]
    database_subnet_cidr = var.database_subnet_cidr
    database_subnet_az = ["us-east-1a", "us-east-1b"]
} 
