common_tags = {
  "Name"      = "bastion-terraform"
  "usage"     = "bastion-terraform"
  "createdby" = "JamesWoolfenden"
}
instance_type     = "t2.micro"
ssm_standard_role = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
name              = "bastion-terraform"
