output "lambda_arn" {
    description     = "The ARN for this lambda"
    value           = aws_lambda_function.bpd_lambda.arn
}