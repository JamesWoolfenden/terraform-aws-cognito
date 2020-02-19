resource "aws_cognito_user_pool_domain" "main" {
  domain       = var.sldn_dash
  user_pool_id = aws_cognito_user_pool.main.id
}
