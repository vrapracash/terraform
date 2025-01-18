variable "environment" {
    default = "dev"
}

variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is the ami ID of devops-practice which is RHEL-9"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    type        = map # optional
    default     = {
        Name        = "backend"
        Project     = "expense"
        Component   = "backend"
        Environment = "DEV"
        terraform   = "true"
    }
}

variable "sg_name" {
    default     = "allow_sshh"
}

variable "sg_description"{
    default     = "Allow port number 22 for SSH access"
}

variable "from_port"{
    default     = 22
    type        = number
}

variable "to_port" {
    default     = 22
    type        = number
}

variable "protocol" {
    default         = "tcp"
}

variable "ingress_cidr" {
    type    = list(string)
    default = ["0.0.0.0/0"]
}

variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
  type        = map
  default     = {
    Project         = "expense"
    Environment     = "dev"
    Terraform       = "true"
  }

}

variable "zone_id" {
  default     = "Z10419222OSUO7G73DLW6"
}

variable "domain_name" {
  default     = "veeraprakash.online"
 }
