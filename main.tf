
locals {
  vpc_id = aws_vpc.kojitechs.id
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

data "aws_availability_zones" "azs" {
  state = "available"
}

#creating vpc
resource "aws_vpc" "kojitechs" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    "Name" = "kojitechs_vpc"
  }
}

#creating public subnet

resource "aws_subnet" "pub_subnet_1" {
  vpc_id                  = local.vpc_id
  cidr_block              = var.pub_subnet_cidr[0]
  availability_zone       = data.aws_availability_zones.azs.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "pub_subnet_${data.aws_availability_zones.azs.names[0]}"
  }
}

resource "aws_subnet" "pub_subnet_2" {
  vpc_id                  = local.vpc_id
  cidr_block              = var.pub_subnet_cidr[1]
  availability_zone       = data.aws_availability_zones.azs.names[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "pub_subnet_${data.aws_availability_zones.azs.names[1]}"
  }
}

resource "aws_subnet" "priv_subnet_1" {
  vpc_id            = local.vpc_id
  cidr_block        = var.priv_subnet_cidr[0]
  availability_zone = data.aws_availability_zones.azs.names[0]

  tags = {
    Name = "priv_sub_${data.aws_availability_zones.azs.names[0]}"
  }
}

resource "aws_subnet" "priv_subnet_2" {
  vpc_id            = local.vpc_id
  cidr_block        = var.priv_subnet_cidr[1]
  availability_zone = data.aws_availability_zones.azs.names[1]

  tags = {
    Name = "priv_sub_${data.aws_availability_zones.azs.names[1]}"
  }
}

resource "aws_subnet" "database_subnet_1" {
  vpc_id            = local.vpc_id
  cidr_block        = var.database_subnet_cidr[0]
  availability_zone = data.aws_availability_zones.azs.names[0]

  tags = {
    Name = "database_subnet_${data.aws_availability_zones.azs.names[0]}"
  }
}

resource "aws_subnet" "database_subnet_2" {
  vpc_id            = local.vpc_id
  cidr_block        = var.database_subnet_cidr[1]
  availability_zone = data.aws_availability_zones.azs.names[1]

  tags = {
    Name = "database_subnet_${data.aws_availability_zones.azs.names[1]}"
  }
}
