resource "azurerm_data_factory" "example" {
  name                = var.data_factory_name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags

  dynamic "identity" {
    for_each = var.identity != null ? [var.identity] : []
    content {
      type = identity.value["type"]
    }
  }

  dynamic "github_configuration" {
    for_each = var.github_configuration != null ? [var.github_configuration] : []
    content {
      account_name    = github_configuration.value["account_name"]
      branch_name     = github_configuration.value["branch_name"]
      git_url         = github_configuration.value["git_url"]
      repository_name = github_configuration.value["repository_name"]
      root_folder     = github_configuration.value["root_folder"]
    }
  }

  dynamic "vsts_configuration" {
    for_each = var.vsts_configuration != null ? [var.vsts_configuration] : []
    content {
      account_name    = vsts_configuration.value["account_name"]
      branch_name     = vsts_configuration.value["branch_name"]
      project_name    = vsts_configuration.value["project_name"]
      repository_name = vsts_configuration.value["repository_name"]
      root_folder     = vsts_configuration.value["root_folder"]
      tenant_id       = vsts_configuration.value["tenant_id"]
    }
  }

  managed_virtual_network_enabled = var.managed_virtual_network_enabled
  public_network_enabled          = var.public_network_enabled

  customer_managed_key_id          = var.customer_managed_key_id
  customer_managed_key_identity_id = var.customer_managed_key_identity_id

  dynamic "global_parameter" {
    for_each = var.global_parameters
    iterator = param
    content {
      name  = param.value["name"]
      value = param.value["value"]
      type = param.value["type"]
    }
  }
}
