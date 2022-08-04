variable "region" {
  default = "us-east-1"
}

variable "access_key" {
  description = "my_access_key"
  default = file(key)
}

variable "secret_key" {
  description = "my secret key"
  default = file(key)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0a5588cee1fe39fff"
}

variable "project" {
 default = "new"
}