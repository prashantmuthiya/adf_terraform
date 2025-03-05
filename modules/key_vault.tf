module "example_key_vault" {
  source = "./path-to-your-key-vault-module"

  resource_group_name = "example-resource-group"
  location            = "North Europe"
  key_vault_name      = "example-key-vault"
  kv_sku              = "standard"
  tenant_id           = "00000000-0000-0000-0000-000000000000"

  enabled_for_disk_encryption = true
  enabled_for_deployment      = true
  enabled_for_template_deployment = true
  purge_protection_enabled    = true

  tages = {
    environment = "production"
    project     = "example-project"
  }

  linked_service_name = "example-linked-service"
  data_factory_id     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.DataFactory/factories/example-factory"
}