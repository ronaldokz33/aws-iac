module "order_processing_lambda" {
    source              = "../../modules/lambda"

    lambda_name         = local.app_name
    lambda_handler      = "Bpd.Order.Processing.Lambda::Bpd.Order.Processing.Lambda.Function::Handler"
    lambda_role         = module.iam_role.iam_role_arn
    lambda_runtime      = "dotnet6"
    lambda_memory_size  = var.order_processing_lambda_memory_size
    lambda_timeout      = var.order_processing_lambda_timeout
}