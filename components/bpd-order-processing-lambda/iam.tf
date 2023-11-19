data "template_file" "iam_policy" {
    template = templatefile("./policies/iam-policy.json")
}

module "iam_role" {
    source          = "../../modules/iam"
    app_name        = local.app_name
    policy_type     = "lambda"
    policy_base64   = base64encode(data.template_file.iam_policy.rendered)
}