resource "aws_cognito_user_group" "unauthenticated" {
  name         = "UserPoolUnAuthGroup"
  description  = "A user group for unauthenticated users"
  role_arn     = aws_iam_role.unauthenticated[count.index].arn
  user_pool_id = aws_cognito_user_pool.main.id
  precedence   = 42
  count        = var.unauthenticated_grouprole_count
}
