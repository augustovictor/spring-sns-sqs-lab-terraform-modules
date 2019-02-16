resource "aws_sns_topic" "sns_topic" {
  name = "${var.sns_topic_name}"
  
  delivery_policy = <<EOF
  {
    "http": {
      "defaultHealthyRetryPolicy": {
        "minDelayTarget": ${var.sns_topic_min_delay_target},
        "maxDelayTarget": ${var.sns_topic_max_delay_target},
        "numRetries": "${var.sns_topic_num_retries}",
        "numMaxDelayRetries": "${var.sns_topic_num_max_delay_retries}",
        "numNoDelayRetries": "${var.sns_topic_num_no_delay_retries}",
        "numMinDelayRetries": "${var.sns_topic_num_min_delay_retries}",
        "backoffFunction": "${var.sns_topic_backoff_function}"
        },
        "disableSubscriptionOverrides": "${var.sns_topic_disable_subscription_overrides}",
        "defaultThrottlePolicy": {
          "maxReceivesPerSecond": "${var.sns_topic_max_receives_per_second}"
        }
      }
    }
    EOF
}