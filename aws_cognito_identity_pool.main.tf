resource "aws_cognito_identity_pool" "main" {
  identity_pool_name               = replace(var.fqdn, ".", "")
  allow_unauthenticated_identities = false

   cognito_identity_providers {
     client_id               = aws_cognito_user_pool_client.web.id
     provider_name           = aws_cognito_user_pool.main.endpoint
     server_side_token_check = true
   }

  cognito_identity_providers {
    client_id               = aws_cognito_user_pool_client.cli.id
    provider_name           = aws_cognito_user_pool.main.endpoint
    server_side_token_check = var.server_side_token_check
  }
}
