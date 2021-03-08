variable "fqdn_no_env" {
  type        = string
  description = "A fully qualified domain name without the environment name (eg. ostl.fibrenation.net)"
}

variable "user_pool_id" {
  type        = string
  description = "The identifier of the cognito user pool to assign roles to"
}


variable "identity_pool_id" {
  type        = string
  description = "The identifier of the cognito identity pool to assign roles to"
}

variable "iam_path" {
  type        = string
  description = "The path used to namespace IAM resources"
}

variable "authenticated_grouprole_count" {
  type        = number
  description = "Toggle an 'authenticated user' role associated with a specific application"
  # For example a role that allows users to be in a grouo for auth.dev.fibrenation.net makes no sense
  # However, a role that allows users to be in a group for ostl.dev.fibrenation.net does make sense.
  # Therefore we can say that this is '0' the auth project and '1' for any web application project.
}

variable "unauthenticated_grouprole_count" {
  type        = number
  description = "Toggle an 'unauthenticated user' role associated with a specific application"
}

variable "common_tags" {
  description = "Implemnts the common tags scheme"
  type        = map(any)
}

variable "fqdn" {
  type        = string
  description = "A fully qualified domain name (eg. ostl.dev.fibrenation.net)"
}

variable "sldn_dash" {
  type        = string
  description = "A second level domain name seprated by dashes (ie. without the tld) (eg. auth-dev-fibrentation)"
}

variable "server_side_token_check" {
  type    = bool
  default = true
}

variable "callback_urls" {
  type    = list(any)
  default = ["http://example.com"]
}

variable "default_redirect_uri" {
  type    = string
  default = "http://example.com"
}
