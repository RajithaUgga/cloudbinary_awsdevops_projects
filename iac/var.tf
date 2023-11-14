variable "ami" {
  default = "i-03651a346367f7803"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  default = "key_nexus"
}

variable "subnet_id" {
  default = "subnet-077f793640c457238"
}

variable "vpc_security_group_ids" {
  default = "sg-064743d8ec6320121"
}

variable "iam_instance_profile" {
  default = "8krishna"
}