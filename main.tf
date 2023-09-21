resource "aws_instance" "this" {
  for_each                = local.configuration
  ami                     = each.value.ami
  instance_type           = each.value.instance_type
  host_resource_group_arn = each.value.host_resource_group_arn
  tenancy                 = each.value.tenancy
  tags                    = each.value.tags
}
