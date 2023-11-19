resource "aws_iam_role" "iam_role" {
    name                = "bpd-${var.app_name}-${var.role_type}-role",
    assume_role_policy  = local.assume_role_policy
}