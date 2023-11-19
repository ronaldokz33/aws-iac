module "payment_processing_lambda" {
    source              = "../../modules/lambda"

    lambda_name         = local.app_name
    lambda_handler      = "Bpd.Payment.Processing.Lambda::Bpd.Payment.Processing.Lambda.Function::Handler"
    lambda_role         = module.iam_role.iam_role_arn
    lambda_runtime      = "dotnet6"
    lambda_memory_size  = var.payment_processing_lambda_memory_size
    lambda_timeout      = var.payment_processing_lambda_timeout
}