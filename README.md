# terraform-aws-cognito

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "cognito" {
  source      = "../../"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Inputs

| Name                            | Description                                                                                     | Type     | Default                                    | Required |
| ------------------------------- | ----------------------------------------------------------------------------------------------- | -------- | ------------------------------------------ | :------: |
| authenticated_grouprole_count   | Toggle an 'authenticated user' role associated with a specific application                      | `number` | n/a                                        |   yes    |
| callback_urls                   | n/a                                                                                             | `list`   | <pre>[<br> "http://example.com"<br>]</pre> |    no    |
| common_tags                     | Implemnts the common tags scheme                                                                | `map`    | n/a                                        |   yes    |
| default_redirect_uri            | n/a                                                                                             | `string` | `"http://example.com"`                     |    no    |
| fqdn                            | A fully qualified domain name (eg. ostl.dev.fibrenation.net)                                    | `string` | n/a                                        |   yes    |
| fqdn_no_env                     | A fully qualified domain name without the environment name (eg. ostl.fibrenation.net)           | `string` | n/a                                        |   yes    |
| iam_path                        | The path used to namespace IAM resources                                                        | `string` | n/a                                        |   yes    |
| identity_pool_id                | The identifier of the cognito identity pool to assign roles to                                  | `string` | n/a                                        |   yes    |
| server_side_token_check         | n/a                                                                                             | `bool`   | `true`                                     |    no    |
| sldn_dash                       | A second level domain name seprated by dashes (ie. without the tld) (eg. auth-dev-fibrentation) | `string` | n/a                                        |   yes    |
| unauthenticated_grouprole_count | Toggle an 'unauthenticated user' role associated with a specific application                    | `number` | n/a                                        |   yes    |
| user_pool_id                    | The identifier of the cognito user pool to assign roles to                                      | `string` | n/a                                        |   yes    |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
