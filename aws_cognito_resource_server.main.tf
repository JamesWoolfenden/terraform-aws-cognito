resource "aws_cognito_resource_server" "main" {
  name         = var.fqdn
  identifier   = var.fqdn
  user_pool_id = aws_cognito_user_pool.main.id
}
