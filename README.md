# terraform-aws-cognito

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-cognito/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-cognito)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-cognito.svg)](https://github.com/JamesWoolfenden/terraform-aws-cognito/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-cognito.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-cognito/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-cognito/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-cognito&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-cognito/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-cognito&benchmark=INFRASTRUCTURE+SECURITY)

---

Terraform module, Cognito basics.

## Usage

Include this repository as a module in your existing Terraform code:

```hcl
module "cognito" {
  source      = "github.com/JamesWoolfenden/terraform-aws-congnito"
  version.    = "0.0.1"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cognito_identity_pool.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_identity_pool) | resource |
| [aws_cognito_resource_server.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_resource_server) | resource |
| [aws_cognito_user_group.authenticated](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_group) | resource |
| [aws_cognito_user_group.unauthenticated](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_group) | resource |
| [aws_cognito_user_pool.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool) | resource |
| [aws_cognito_user_pool_client.cli](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_client) | resource |
| [aws_cognito_user_pool_client.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_client) | resource |
| [aws_cognito_user_pool_domain.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_domain) | resource |
| [aws_iam_role.authenticated_standard](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.unauthenticated](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_policy_document.authenticated_standard](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.unauthenticated](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authenticated_grouprole_count"></a> [authenticated\_grouprole\_count](#input\_authenticated\_grouprole\_count) | Toggle an 'authenticated user' role associated with a specific application | `number` | n/a | yes |
| <a name="input_callback_urls"></a> [callback\_urls](#input\_callback\_urls) | n/a | `list(any)` | <pre>[<br>  "http://example.com"<br>]</pre> | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Implemnts the common tags scheme | `map(any)` | n/a | yes |
| <a name="input_default_redirect_uri"></a> [default\_redirect\_uri](#input\_default\_redirect\_uri) | n/a | `string` | `"http://example.com"` | no |
| <a name="input_fqdn"></a> [fqdn](#input\_fqdn) | A fully qualified domain name | `string` | n/a | yes |
| <a name="input_fqdn_no_env"></a> [fqdn\_no\_env](#input\_fqdn\_no\_env) | A fully qualified domain name without the environment name (eg. ostl.fibrenation.net) | `string` | n/a | yes |
| <a name="input_iam_path"></a> [iam\_path](#input\_iam\_path) | The path used to namespace IAM resources | `string` | n/a | yes |
| <a name="input_identity_pool_id"></a> [identity\_pool\_id](#input\_identity\_pool\_id) | The identifier of the cognito identity pool to assign roles to | `string` | n/a | yes |
| <a name="input_server_side_token_check"></a> [server\_side\_token\_check](#input\_server\_side\_token\_check) | n/a | `bool` | `true` | no |
| <a name="input_sldn_dash"></a> [sldn\_dash](#input\_sldn\_dash) | A second level domain name separated by dashes (ie. without the tld) | `string` | n/a | yes |
| <a name="input_unauthenticated_grouprole_count"></a> [unauthenticated\_grouprole\_count](#input\_unauthenticated\_grouprole\_count) | Toggle an 'unauthenticated user' role associated with a specific application | `number` | n/a | yes |
| <a name="input_user_pool_id"></a> [user\_pool\_id](#input\_user\_pool\_id) | The identifier of the cognito user pool to assign roles to | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Policy

This is the policy required to build this project:

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang
resource "aws_iam_policy" "terraform_pike" {
  name_prefix = "terraform_pike"
  path        = "/"
  description = "Pike Autogenerated policy from IAC"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "cognito-idp:AddCustomAttributes",
                "cognito-idp:CreateGroup",
                "cognito-idp:CreateResourceServer",
                "cognito-idp:CreateUserPool",
                "cognito-idp:CreateUserPoolClient",
                "cognito-idp:CreateUserPoolDomain",
                "cognito-idp:DeleteGroup",
                "cognito-idp:DeleteResourceServer",
                "cognito-idp:DeleteUserPool",
                "cognito-idp:DeleteUserPoolClient",
                "cognito-idp:DeleteUserPoolDomain",
                "cognito-idp:DescribeResourceServer",
                "cognito-idp:DescribeUserPool",
                "cognito-idp:DescribeUserPoolClient",
                "cognito-idp:DescribeUserPoolDomain",
                "cognito-idp:GetGroup",
                "cognito-idp:GetUserPoolMfaConfig",
                "cognito-idp:TagResource",
                "cognito-idp:UntagResource",
                "cognito-idp:UpdateGroup",
                "cognito-idp:UpdateResourceServer",
                "cognito-idp:UpdateUserPool"
            ],
            "Resource": "*"
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeAccountAttributes"
            ],
            "Resource": "*"
        },
        {
            "Sid": "VisualEditor2",
            "Effect": "Allow",
            "Action": [
                "iam:CreateRole",
                "iam:DeleteRole",
                "iam:GetRole",
                "iam:ListAttachedRolePolicies",
                "iam:ListInstanceProfilesForRole",
                "iam:ListRolePolicies",
                "iam:PassRole",
                "iam:TagRole",
                "iam:UpdateRoleDescription"
            ],
            "Resource": "*"
        }
    ]
})
}


```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->
### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
