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
}

variable "unauthenticated_grouprole_count" {
  type        = number
  description = "Toggle an 'unauthenticated user' role associated with a specific application"
}

variable "common_tags" {
  description = "Implements the common tags scheme"
  type        = map(any)
}

variable "fqdn" {
  type        = string
  description = "A fully qualified domain name"
}

variable "sldn_dash" {
  type        = string
  description = "A second level domain name separated by dashes (ie. without the tld)"
}

variable "server_side_token_check" {
  type    = bool
  default = true
}
