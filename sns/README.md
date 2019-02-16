# SNS

```
module "sns_topic" {
  source = "git@github.com:augustovictor/spring-sns-sqs-lab-terraform-modules.git//sns?ref=0.0.2"

  sns_topic_min_delay_target = "${var.sns_topic_min_delay_target}"
  sns_topic_backoff_function = "${var.sns_topic_backoff_function}"
  sns_topic_name = "${var.sns_topic_name}"
  sns_topic_num_retries = "${var.sns_topic_num_retries}"
  sns_topic_max_receives_per_second = "${var.sns_topic_max_receives_per_second}"
  sns_topic_num_no_delay_retries = "${var.sns_topic_num_no_delay_retries}"
  sns_topic_num_max_delay_retries = "${var.sns_topic_num_max_delay_retries}"
  sns_topic_disable_subscription_overrides = "${var.sns_topic_disable_subscription_overrides}"
  sns_topic_num_min_delay_retries = "${var.sns_topic_num_min_delay_retries}"
  sns_topic_max_delay_target = "${var.sns_topic_max_delay_target}"
}
```