
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
  default     = ["10.0.0.0/24", "10.0.2.0/24"]
  description = "vpc cidr public subnet"

}

variable "priv_subnet_cidr" {
  type        = list(any)
  default     = ["10.0.1.0/24", "10.0.3.0/24"]
  description = "vpc cidr private subnet"

}

variable "database_subnet_cidr" {
  type        = list(any)
  default     = ["10.0.51.0/24", "10.0.53.0/24"]
  description = "vpc cidr database"

}

# variable "pub_subnet" {
# type    = list(string)
# default = ["pub_subnet_1", "pub_subnet_2"]

#}

variable "create_vpc" {
  type        = bool
  description = "Create Vpc for Kojitechs"
  default     = true

}