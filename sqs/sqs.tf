resource "aws_sqs_queue" "sqs_queue" {
  name                      = "${var.sqs_queue_name}"
  
  delay_seconds             = ${var.sqs_queue_delay_seconds}
  max_message_size          = ${var.sqs_queue_max_message_size}
  message_retention_seconds = ${var.sqs_queue_message_retention_seconds}
  receive_wait_time_seconds = ${var.sqs_queue_receive_wait_time_seconds}
  redrive_policy            = "${var.sqs_queue_redrive_policy}"

  tags = {
    Environment = "production"
  }
}