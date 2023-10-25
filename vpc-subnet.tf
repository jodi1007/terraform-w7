resource "aws_vpc" "vpc1" {
    cidr_block = "172.102.0.0/16"
    instance_tenancy = "default"

    tags = {
      Name = "terraform-vpc"
      env = "dev"
    }
  
}
## Subnet

resource "aws_subnet" "public_subnet1" {
    availability_zone = "us-east-1a"
    vpc_id = aws_vpc.vpc1.id
    cidr_block = "172.102.1.0/24"
    map_public_ip_on_launch = true
    tags = {
      Name = "subnet-public-vpc"
      env = "dev"
    }
}

resource "aws_subnet" "public_subnet2" {
    availability_zone = "us-east-1b"
    vpc_id = aws_vpc.vpc1.id
    cidr_block = "172.102.2.0/24"
    map_public_ip_on_launch = true
    tags = {
      Name = "subnet-public-vpc"
      env = "dev"

    }
}

## Private subnet

resource "aws_subnet" "private_subnet1" {
    availability_zone = "us-east-1a"
    vpc_id = aws_vpc.vpc1.id
    cidr_block = "172.102.3.0/24"
    tags = {
      Name = "subnet-private-vpc"
      env = "dev"
    }
    
}

resource "aws_subnet" "private_subnet2" {
    availability_zone = "us-east-1b"
    vpc_id = aws_vpc.vpc1.id
    cidr_block = "172.102.4.0/24"
    tags = {
      Name = "subnet-private-vpc"
      env = "dev"
    }
    
}