data "aws_instances" "new" {
  instance_tags = {
   Name = var.project
  }
}