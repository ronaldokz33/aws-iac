resource "aws_lambda_function" "bpd_lambda" {
  function_name = local.function_name
  handler       = var.lambda_handler
  runtime       = var.lambda_runtime
  role          = var.lambda_role
  memory_size   = var.lambda.memory_size
  timeout       = var.lambda.timeout
  filename      = data.archive_lambda.dummy.output_path
}