variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Filter for AMI by name and owner"

  type = object({
    name  = string
    owner = string
  })

  default = {
    name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631"
  }
}

variable "environment" {
  description = "development environment"

  type = object({
    name   = string
    prefix = string
  })

  default = {
    name   = "dev"
    prefix = "10.0"
  }
}

variable "asg_min_size" {
  description = "minimum size for asg"
  default = 1
}

variable "asg_max_size" {
  description = "maximum size for asg"
  default = 2
}

