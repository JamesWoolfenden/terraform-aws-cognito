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
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| authenticated\_grouprole\_count | Toggle an 'authenticated user' role associated with a specific application | `number` | n/a | yes |
| callback\_urls | n/a | `list` | <pre>[<br>  "http://example.com"<br>]</pre> | no |
| common\_tags | Implemnts the common tags scheme | `map` | n/a | yes |
| default\_redirect\_uri | n/a | `string` | `"http://example.com"` | no |
| fqdn | A fully qualified domain name (eg. ostl.dev.fibrenation.net) | `string` | n/a | yes |
| fqdn\_no\_env | A fully qualified domain name without the environment name (eg. ostl.fibrenation.net) | `string` | n/a | yes |
| iam\_path | The path used to namespace IAM resources | `string` | n/a | yes |
| identity\_pool\_id | The identifier of the cognito identity pool to assign roles to | `string` | n/a | yes |
| server\_side\_token\_check | n/a | `bool` | `true` | no |
| sldn\_dash | A second level domain name seprated by dashes (ie. without the tld) (eg. auth-dev-fibrentation) | `string` | n/a | yes |
| unauthenticated\_grouprole\_count | Toggle an 'unauthenticated user' role associated with a specific application | `number` | n/a | yes |
| user\_pool\_id | The identifier of the cognito user pool to assign roles to | `string` | n/a | yes |

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
