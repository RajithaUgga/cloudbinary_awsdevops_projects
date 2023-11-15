variable "ami" {
  default = "i-02e26add71d2bf267"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "key_terraform"
}

variable "subnet_id" {
  default = "subnet-08c331c561253f24f"
}

variable "vpc_security_group_ids" {
  default = "sg-0829dd42ed0c71b2a"
}

variable "iam_instance_profile" {
  default = "iam_role"
}
