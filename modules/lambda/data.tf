data "archive_lambda" "dummy" {
    type            = "zip"
    output_path     = "${path.module}/lambda-dummy.zip"

    source {
        content     = "dummy"
        filename    = "dummy.txt"
    }
}