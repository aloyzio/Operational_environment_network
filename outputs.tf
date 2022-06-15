
output "vpc_id" {
    description = "VPC Output Value"
    value = try(aws_vpc.kojitechs_vpc[0].id, "")
  
}

output "public_subnet" {
    description = "public subnet output value"
  value = aws_subnet.pub_subnet.*.id
}

output "priv_subnet" {
    description = "priv subnet output value"
  value = aws_subnet.priv_subnet.*.id
}

output "database_subnet" {
    description = "database subnet output value"
  value = aws_subnet.database_subnet.*.id
}