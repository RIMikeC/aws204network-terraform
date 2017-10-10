#--------------------------------------------------------------
# This module creates a small (t2.micro) jump box
#--------------------------------------------------------------

resource "aws_instance" "jump_box" {
  ami                         = "${data.aws_ami.ami.id}"
  instance_type               = "t2.micro"
  subnet_id                   = "${var.subnet}"
  associate_public_ip_address = "${var.public}"

  tags {
    Name        = "${var.project_name}-${var.environment}-jump-box"
    project     = "${var.project_name}"
    environment = "${var.environment}"
    terraform   = "true"
  }
}
