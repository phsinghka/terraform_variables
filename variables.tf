variable "aws_region" {
  description = "The AWS region to create resource in"
  type        = string
  default     = "us-east-2"
}

variable "instance_type" {
  description = "The Instance type of EC2"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The Ami ID for the Ec2 instance"
  type        = string

}
