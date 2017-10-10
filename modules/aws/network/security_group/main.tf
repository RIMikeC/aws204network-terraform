# This is a template for a security group.
# Uncomment what you need

# resource "aws_security_group" "sg-name" {
#   name        = "sg-name"
#   description = "mysg"
#   vpc_id      = "${module.vpc.vpc_id}"
# 
################################
# Uncomment the following to allow AD
#
#   ingress {
#     from_port   = 389
#     to_port     = 389
#     protocol    = "tcp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 636
#     to_port     = 636
#     protocol    = "tcp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 3268
#     to_port     = 3269
#     protocol    = "tcp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 88
#     to_port     = 88
#     protocol    = "tcp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 88
#     to_port     = 88
#     protocol    = "udp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 445
#     to_port     = 445
#     protocol    = "tcp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 445
#     to_port     = 445
#     protocol    = "udp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 464
#     to_port     = 464
#     protocol    = "tcp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 464
#     to_port     = 464
#     protocol    = "udp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 9389
#     to_port     = 9389
#     protocol    = "tcp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 139
#     to_port     = 139
#     protocol    = "tcp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 137
#     to_port     = 137
#     protocol    = "tcp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   ingress {
#     from_port   = 137
#     to_port     = 137
#     protocol    = "udp"
#     cidr_blocks = ["180.10.34.165/32", "10.229.11.13/32", "10.150.130.16/32"]
#   }
# 
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }
# End of AD block
###################################################### 
#
#   HTTP
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/8"]
#   }
# 
#   HTTPS
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/8"]
#   }
#
#   RDP
#   ingress {
#     from_port   = 3389
#     to_port     = 8339
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/8"]
#   }
#
#   SMTP
#   ingress {
#     from_port   = 25
#     to_port     = 25
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/8"]
#   }
#
#   Tomcat HTTP
#   ingress {
#     from_port   = 8080
#     to_port     = 8080
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/8"]
#   }
#
#   SSH, SCP and SFTP
#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/8"]
#   }
#
