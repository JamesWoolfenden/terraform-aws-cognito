resource "aws_cognito_user_pool_client" "web" {
  name            = "PublicExternalWebApplication"
  user_pool_id    = aws_cognito_user_pool.main.id
  generate_secret = false

  callback_urls        = var.callback_urls
  default_redirect_uri = var.default_redirect_uri

  allowed_oauth_scopes                 = ["email", "openid"]
  allowed_oauth_flows                  = ["code"]
  allowed_oauth_flows_user_pool_client = true
  supported_identity_providers         = ["COGNITO"]

  refresh_token_validity = 1
}
