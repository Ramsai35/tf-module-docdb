#data "aws_caller_identity" "current" {}
#
#data "aws_vpc" "default" {
#  id = var.default_vpc_id
#
#}
data "aws_ssm_parameter" "DB_ADMIN_USER" {
  name = "${var.env}.docdb.DB_ADMIN_USER"
}

data "aws_ssm_parameter" "DB_ADMIN_PASS" {
  name = "${var.env}.docdb.DB_ADMIN_PASS"
}