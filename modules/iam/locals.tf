locals {
    assume_role_policy = base64decode(var.policy_base64)
}