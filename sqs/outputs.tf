output "sqs_queue_id" {
  value = "${aws_sqs_queue.sqs_queue.id}"
}
output "sqs_queue_arn" {
  value = "${aws_sqs_queue.sqs_queue.arn}"
}
output "sqs_queue_name" {
  value = "${aws_sqs_queue.sqs_queue.name}"
}