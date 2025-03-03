resource "azurerm_data_factory_linked_service_key_vault" "example" {
  name            = var.linked_service_name
  data_factory_id = var.data_factory_id
  key_vault_id    = var.key_vault_id
  description     = "Linked Service connecting Data Factory to Azure Key Vault"

  dynamic "annotations" {
    for_each = var.annotations != null ? var.annotations : []
    iterator = annotation
    content {
      name  = annotation.value["name"]
      value = annotation.value["value"]
    }
  }

  dynamic "parameters" {
    for_each = var.parameters != null ? var.parameters : []
    iterator = param
    content {
      name  = param.value["name"]
      value = param.value["value"]
    }
  }
}
