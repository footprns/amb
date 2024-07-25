amb = {
  NetworkId       = "n-NH2MMRSQ7BDXTB3UE4UU5VET7E"
  MemberId        = "m-K2V7RZYTQZFDVDZDKWL2DOWAOA"
  vpc_ep_svc_name = "com.amazonaws.ap-southeast-1.managedblockchain.n-nh2mmrsq7bdxtb3ue4uu5vet7e"
}

ec2_network = {
  vpc_id    = "vpc-0a5bcbd5289d79f8f"
  subnet_id = "subnet-0e74674be3b1c2d6d" # private subnet
  security_groups = {
    amb_sg = [
      {
        type        = "ingress"
        from_port   = 0
        to_port     = 0
        protocol    = "ALL"
        cidr_blocks = ["0.0.0.0/0"]
      },
      {
        type        = "egress"
        from_port   = 0
        to_port     = 0
        protocol    = "ALL"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ],






  }

}