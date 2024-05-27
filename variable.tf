variable "subscriptions" {
  description = "Map of subscription configurations"
  type        = map(object({
    endpoint                        = string
    protocol                        = string
    subscription_role_arn           = string
    confirmation_timeout_in_minutes = number
    delivery_policy                 = string
    endpoint_auto_confirms         = bool
    filter_policy                   = string
    raw_message_delivery            = bool
    filter_policy_scope             = string
    redrive_policy                  = string
  }))
}

variable "create_new_sns_topic" {
  description = "Flag to indicate whether to create a new SNS topic"
  type        = bool
  default     = true
}

variable "create_subscription" {
  description = "Flag to indicate whether to create subscription"
  type        = bool
  default     = true
}


