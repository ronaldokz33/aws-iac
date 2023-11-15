data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "iam_for_lambda" {
  name               = "iam_for_lambda"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_lambda_function" "lambda_terraform" {
  function_name = "lambda-terraform"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "Bpd.Order.Processing.Lambda::Bpd.Order.Processing.Lambda.Function::Handler"

  runtime = "dotnet6"
}
