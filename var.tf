variable "ami" {
    description="Amazon Machine Image Value"
    default="ami-03793655b06c6e29a"
}

variable "instance_type" {
    description="Amazon Instance Type"
    default="t2.micro"
}

variable "instances_count" {
    description="Total number of instances"
    default="2"
}