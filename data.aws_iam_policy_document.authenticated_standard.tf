data "aws_iam_policy_document" "authenticated_standard" {
  policy_id = "CognitoIDPoolAuthStd.${var.fqdn}"

  statement {
    effect = "Allow"

    principals {
      type = "Federated"

      identifiers = [
        "cognito-identity.amazonaws.com",
      ]
    }

    actions = [
      "sts:AssumeRoleWithWebIdentity",
    ]

    condition {
      test     = "StringLike"
      variable = "cognito-identity.amazonaws.com:amr"

      values = [
        "authenticated",
      ]
    }
  }
}
