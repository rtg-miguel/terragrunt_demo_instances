locals{
  decoded_configuration = yamldecode(file(var.configuration_file))
  configuration = {for index, entry in local.decoded_configuration:
    index => {
      ami = entry.ami
      instance_type = entry.instance_type
      host_resource_group_arn = entry.host_resource_group_arn
      tenancy = entry.tenancy
      tags = merge(var.labels, entry.tags)
    }
  }
}
