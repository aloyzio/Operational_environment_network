
variable "region" {
  default     = "us-east-1"
  type        = string
  description = "AWS region"
}

variable "vpc_cidr" {
  type        = list(any)
  default     = ["10.0.0.0/16"]
  description = "vpc cidr block"

}

variable "pub_subnet_cidr" {
  type        = list(any)
  #default     = ["10.0.0.0/24", "10.0.2.0/24"]
  description = "vpc cidr public subnet"

}

variable "database_subnet_az" {
  type = list
}

variable "priv_subnet_cidr" {
  type        = list(any)
  #default     = ["10.0.1.0/24", "10.0.3.0/24"]
  description = "vpc cidr private subnet"

}

variable "database_subnet_cidr" {
  type        = list(any)
  #default     = ["10.0.51.0/24", "10.0.53.0/24"]
  description = "vpc cidr database"

}

variable "create_vpc" {
  type        = bool
  description = "Create Vpc for Kojitechs"
  default     = true

}

variable "enable_dns_hostnames" {
  type = bool
  description = "enable dns hostnames"
  default = true
  
}

variable "enable_dns_support" {
  type = bool
  description = "enable dns support"
  default = true
  
}

variable "priv_subnet_az" {
  
}

variable "pub_subnet_az" {
  description = "Public subnet azs"
  type = list(any)
  
}