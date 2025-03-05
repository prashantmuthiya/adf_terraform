module "key_vault" {
  source              = "./modules/"
  resource_group_name = local.resource_group_name
  location            = local.location
  key_vault_name      = local.key_vault_name
  kv_sku              = local.kv_sku
  tenant_id           = local.tenant_id
}

resource "azurerm_data_factory_linked_service_key_vault" "linked_service_key_vault" {
  name                = var.linked_service_name
  data_factory_id     = var.data_factory_id
  key_vault_id        = module.key_vault.key_vault_id
  description         = "Linked service to Key Vault"
}

output "linked_service_id" {
  value = azurerm_data_factory_linked_service_key_vault.linked_service_key_vault.id
}