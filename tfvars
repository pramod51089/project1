# terraform.tfvars

# Define subscription configurations
subscriptions = {
  example_subscription1 = {
    endpoint                        = "example@example.com"
    protocol                        = "email"
    subscription_role_arn           = null
    confirmation_timeout_in_minutes = 5
    delivery_policy                 = null
    endpoint_auto_confirms          = false
    filter_policy                   = null
    raw_message_delivery            = false
    filter_policy_scope             = null
    redrive_policy                  = null
  }
  example_subscription2 = {
    endpoint                        = "https://example.com/webhook"
    protocol                        = "https"
    subscription_role_arn           = null
    confirmation_timeout_in_minutes = null
    delivery_policy                 = null
    endpoint_auto_confirms          = true
    filter_policy                   = null
    raw_message_delivery            = false
    filter_policy_scope             = null
    redrive_policy                  = null
  }
}

# Flag to indicate whether to create a new SNS topic
create_new_sns_topic = true

# Flag to indicate whether to create subscription
create_subscription = true
