resource "aws_cognito_user_pool_client" "web" {
  name            = "PublicExternalWebApplication"
  user_pool_id    = aws_cognito_user_pool.main.id
  generate_secret = false

  callback_urls        = ["http://localhost:3000/login"]
  default_redirect_uri = "http://localhost:3000/login"

  # Removed as we are not using role based OAuth scopes for authorisation yet
  # allowed_oauth_scopes                 = "${concat(local.default_oauth_scopes, aws_cognito_resource_server.main.scope_identifiers)}"
  allowed_oauth_scopes = ["email", "openid"]

  allowed_oauth_flows                  = ["code"]
  allowed_oauth_flows_user_pool_client = true

  supported_identity_providers = ["COGNITO"]

  refresh_token_validity = 1
}
