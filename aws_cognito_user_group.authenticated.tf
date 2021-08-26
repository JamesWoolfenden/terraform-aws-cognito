resource "aws_cognito_user_group" "authenticated" {
  name         = "UserPoolAuthGroup.${var.fqdn_no_env}"
  description  = "A user group that grants users access to ${var.fqdn}"
  role_arn     = aws_iam_role.authenticated_standard[count.index].arn
  user_pool_id = aws_cognito_user_pool.main.id
  precedence   = 42
  count        = var.authenticated_grouprole_count
}
