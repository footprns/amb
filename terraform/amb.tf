resource "aws_vpc_endpoint" "amb" {
  vpc_id            = var.ec2_network["vpc_id"]
  service_name      = var.amb["vpc_ep_svc_name"]
  vpc_endpoint_type = "Interface"
  security_group_ids = [
    aws_security_group.amb["amb_sg"].id
  ]
  subnet_ids          = [var.ec2_network["subnet_id"]]
  private_dns_enabled = true
  tags = {
    Name = "amb"
  }
}