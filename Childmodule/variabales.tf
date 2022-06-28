
variable "env" {
    description = "List of all accounts"
    type = map(string)
    default = {}
  }

  variable "vpc_cidr" {
    description = "vpc cidr"
    type = list
    default = []
  }

  variable "pub_subnet_cidr" {
    type = list
    default = []
    description = "public subnet cidr"

    
  }

  variable "priv_subnet_cidr" {
    type = list
    default = []
    description = "priv subnet cidr"
    
  }

  variable "database_subnet_cidr" {
    type = list
    default = []
    description = "database subnet cidr"
    
  }

  variable "pub_subnet_az" {
    default = ["us-east-1a", "us-east-1b"]
    description = "public subenet azs"
    type = list
    
  }