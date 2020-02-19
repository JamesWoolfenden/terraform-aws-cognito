resource "aws_iam_role" "authenticated_standard" {
  count = var.authenticated_grouprole_count

  name               = "CognitoIDPoolAuthStd.${var.fqdn}"
  description        = "A service role that can be assumed by authenticated users for ${var.fqdn}"
  path               = "${var.iam_path}/service-roles/"
  assume_role_policy = data.aws_iam_policy_document.authenticated_standard.json

  tags = var.common_tags
}
