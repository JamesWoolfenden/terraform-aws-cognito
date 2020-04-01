resource "aws_iam_role" "unauthenticated" {
  name               = "CognitoIDPoolUnAuthStd"
  description        = "A service role that can be assumed by unauthenticated users"
  path               = "${var.iam_path}/service-roles/"
  assume_role_policy = data.aws_iam_policy_document.unauthenticated.json

  # this basically allows us to not produce a role for the auth application
  count = var.unauthenticated_grouprole_count

  tags = var.common_tags
}
