variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}
variable "alb_name" {
  default =  "alb3"
  type        = string
}

variable "alb_security_group_name" {
  default =  "sg1"
   type = string 
}

variable "cluster_name" {
    description = "The name to use for all the cluster resources"
    type = string 
}

variable "db_remote_state_bucket" {
  description = "The S3 bucket where the DB remote state is stored"
  type        = string
}

variable "db_remote_state_key" {
    description = "The path for the database's remote state in S3"
    type = string
}

variable "instance_type" {
    description = "The type of EC2 Instances to run (e.g. t2.micro)" 
    type = string 
}

variable "min_size" {
    description = "The minimum number of EC2 Instances in the ASG" 
    type = number
}

variable "max_size" {
    description = "The maximum number of EC2 Instances in the ASG" 
    type = number
}

variable "db_address" {
    description = "The maximum number of EC2 Instances in the ASG" 
    type = string
}

variable "db_port" {
    description = "The maximum number of EC2 Instances in the ASG" 
    type = string
}