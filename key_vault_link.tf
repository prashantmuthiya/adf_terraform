resource "azurerm_key_vault" "key_vault" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  sku_name                    = var.kv_sku
  tenant_id                   = var.tenant_id
}

resource "azurerm_data_factory_linked_service_key_vault" "linked_service_key_vault" {
  name                = var.linked_service_name
  data_factory_id     = var.data_factory_id
  key_vault_id        = azurerm_key_vault.key_vault.id
  description         = "Linked service to Key Vault"
}

output "linked_service_id" {
  value = azurerm_data_factory_linked_service_key_vault.linked_service_key_vault.id
}