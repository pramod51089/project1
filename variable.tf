variable "role_arn" {
    description = "The ARN of the role to use for Kinesis."
    type        = string
}

variable "s3_bucket_arn" {
    description = "The ARN of the S3 bucket for delivery stream."
    type        = string
}

variable "name" {
    description = "The name of the Kinesis stream."
    type        = string
}

variable "enable_s3_logging" {
    description = "Boolean to enable S3 logging."
    type        = bool
    default     = true  # Example default value
}

variable "cloudwatch_log_group_name" {
    description = "The name of the CloudWatch log group for Kinesis logging."
    type        = string
}

variable "s3_delivery_cloudwatch_log_stream_name" {
    description = "The name of the CloudWatch log stream for S3 delivery."
    type        = string
}

role_arn                              = "arn:aws:iam::123456789012:role/KinesisRole"
s3_bucket_arn                         = "arn:aws:s3:::my-kinesis-bucket"
name                                  = "my-kinesis-stream"
enable_s3_logging                     = true
cloudwatch_log_group_name             = "kinesis-log-group"
s3_delivery_cloudwatch_log_stream_name = "s3-delivery-log-stream"
