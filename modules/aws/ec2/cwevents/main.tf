# This is Simone's code
# It is used to add a rule to CloudWatch to send a 
# notification to an SNS topic that an EC2 instance has change state
# for example, the EC2 instance has been terminated

resource "aws_cloudwatch_event_rule" "changestate" {
  name        = "changestate"
  description = "Capture each EC2 changing state"

  event_pattern = <<PATTERN
{
  "source": [
    "aws.ec2"
  ],
  "detail-type": [
    "EC2 Instance State-change Notification"
  ]
}
PATTERN
}

resource "aws_cloudwatch_event_target" "changestate" {
  rule      = "${aws_cloudwatch_event_rule.changestate.name}"
  target_id = "SendToSNS"
  arn       = "${aws_sns_topic.cwevents.arn}"
}

resource "aws_sns_topic" "cwevents" {
  name = "cwevents"
}
