variable "aws_key_name" {
  type    = string
  default = "WA"
}

variable "app_instance_type" {
  type    = string
  default = "t3.micro"
}

variable "app_version" {
  type = string
  default = "1.0.0"
}