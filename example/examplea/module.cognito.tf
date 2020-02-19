module "cognito" {
  source="../../"
  authenticated_grouprole_count   = "${var.authenticated_grouprole_count}"
  common_tags                     = "${var.common_tags}"
  fqdn        = "${var.fqdn}"
  fqdn_no_env = "${var.fqdn_no_env}"
  iam_path                        = "${var.iam_path}"
  identity_pool_id = "${module.core.aws_cognito_identity_pool.id}"
  sldn_dash   = "${var.sldn_dash}"
  unauthenticated_grouprole_count = "${var.unauthenticated_grouprole_count}"
  user_pool_id     = "${module.core.aws_cognito_user_pool.id}"
}