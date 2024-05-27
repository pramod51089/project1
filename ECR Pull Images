resource "aws_sns_topic_subscription" "this" {
  for_each       = { for k, v in var.subscriptions : k => v if var.create_new_sns_topic && var.create_subscription && v.endpoint != null}
  endpoint       = each.value.endpoint
  protocol       = each.value.protocol
  subscription_role_arn = each.value.protocol == "firehose" ? each.value.subscription_role_arn : null
  topic_arn      = aws_sns_topic.this[0].arn
  confirmation_timeout_in_minutes = lookup(each.value, "confirmation_timeout_in_minutes", null)
  delivery_policy = lookup(each.value, "delivery_policy", null)
  endpoint_auto_confirms = lookup(each.value, "endpoint_auto_confirms", false)
  filter_policy  = lookup(each.value, "filter_policy", null)
  raw_message_delivery = lookup(each.value, "raw_message_delivery", false)
  filter_policy_scope = lookup(each.value, "filter_policy_scope", null)
  redrive_policy = lookup(each.value, "redrive_policy", null)
}
