resource "azurerm_data_factory_linked_service_azure_blob_storage" "example" {
  name            = "example-linked-service"
  data_factory_id = var.data_factory_id
  description     = "Linked service to connect Azure Blob Storage"
  
  connection_string = var.connection_string
  integration_runtime_name = var.integration_runtime_name

  dynamic "key_vault_sas_token" {
    for_each = var.use_key_vault ? [1] : []
    content {
      linked_service_name = var.key_vault_linked_service_name
      secret_name         = var.sas_token_secret_name
    }
  }

  dynamic "parameters" {
    for_each = var.parameters != null ? var.parameters : {}
    iterator = param
    content {
      name  = param.key
      value = param.value
    }
  }

  dynamic "annotations" {
    for_each = var.annotations != null ? var.annotations : []
    iterator = annotation
    content {
      annotation = annotation.value
    }
  }
}
