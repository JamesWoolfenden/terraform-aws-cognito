resource "aws_cognito_user_pool" "main" {
  name = var.fqdn

  username_attributes = ["email"]

  schema {
    attribute_data_type      = String
    name                     = "email"
    required                 = true
    mutable                  = false
    developer_only_attribute = false

    string_attribute_constraints {
      min_length = 0
      max_length = 128
    }
  }

  schema {
    attribute_data_type      = String
    name                     = "given_name"
    required                 = true
    mutable                  = true
    developer_only_attribute = false

    string_attribute_constraints {
      min_length = 0
      max_length = 128
    }
  }

  schema {
    attribute_data_type      = string
    name                     = "family_name"
    required                 = true
    mutable                  = true
    developer_only_attribute = false

    string_attribute_constraints {
      min_length = 0
      max_length = 128
    }
  }

  schema {
    attribute_data_type      = string
    name                     = "phone_number"
    required                 = true
    mutable                  = true
    developer_only_attribute = false

    string_attribute_constraints {
      min_length = 0
      max_length = 15
    }
  }

  admin_create_user_config {
    allow_admin_create_user_only = false
  }

  password_policy {
    minimum_length    = 8
    require_lowercase = true
    require_numbers   = true
    require_symbols   = true
    require_uppercase = true
  }

  tags = var.common_tags
}
