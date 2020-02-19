data "aws_iam_policy_document" "unauthenticated" {
  policy_id = "CognitoIDPoolUnAuthStd"

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
        "unauthenticated",
      ]
    }
  }
}
