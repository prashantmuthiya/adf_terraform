resource "azurerm_data_factory_linked_service_azure_sql_database" "example" {
  name            = "example-sql-linked-service"
  data_factory_id = azurerm_data_factory.example.id

  key_vault_connection_string {
    linked_service_name = azurerm_data_factory_linked_service_key_vault.example.name
    secret_name          = var.key_vault_secret_name
  }

  dynamic "annotations" {
    for_each = var.annotations
    content {
      name  = annotations.value.name
      value = annotations.value.value
    }
  }

  dynamic "parameters" {
    for_each = var.parameters
    content {
      name  = parameters.value.name
      value = parameters.value.value
    }
  }
}

resource "azurerm_data_factory_linked_service_key_vault" "example" {
  for_each = var.key_vaults

  name            = each.value.name
  data_factory_id = azurerm_data_factory.example.id
  key_vault_id    = each.value.key_vault_id

  dynamic "annotations" {
    for_each = each.value.annotations
    content {
      name  = annotations.value.name
      value = annotations.value.value
    }
  }
}
