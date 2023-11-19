variable "lambda_name" {
    description = "Lambda name without prefix or suffix"
    type        = string
}

variable "lambda_handler" {
    description = "Lambda handler"
    type        = string
}

variable "lambda_role" {
    description = "Lambda role"
    type        = string
}

variable "lambda_runtime" {
    description = "Lambda runtime"
    type        = string
    default     = "dotnet6"
}

variable "lambda_memory_size" {
    description = "Lambda memory"
    type        = number
}

variable "lambda_timeout" {
    description = "Lambda timeout"
    type        = number
}