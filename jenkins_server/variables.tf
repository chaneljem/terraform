variable "subnet_id" {
    description = "The VPC subnet the instance(s) will be created in"
    default = "subnet-0123456789abcdef"
}

variable "vpc_id" {
    type = string
    default = "vpc-0123456789abcdef"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "key_name" {
    type = string
    default = "thisismykey"
}