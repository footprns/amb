variable "amb" {
  description = "Configuration for the blockchain network and member"
  type = object({
    NetworkId       = string
    MemberId        = string
    vpc_ep_svc_name = string
  })
}

variable "ec2_network" {
  description = "Configuration for the ec2 network"
  type = object({
    vpc_id    = string
    subnet_id = string
    security_groups = map(list(object({
      type        = string
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    })))
  })

}
