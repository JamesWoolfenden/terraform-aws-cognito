resource "aws_cognito_user_pool_client" "cli" {
  name            = "PrivateCLIDevTools"
  user_pool_id    = aws_cognito_user_pool.main.id
  generate_secret = true

  callback_urls        = var.callback_urls
  default_redirect_uri = var.default_redirect_uri

  allowed_oauth_flows = ["client_credentials"]

  supported_identity_providers = ["COGNITO"]
}
