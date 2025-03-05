resource "azurerm_data_factory_linked_service_azure_blob_storage" "blob_storage_linked_service" {
  name                = var.linked_service_name
  data_factory_id     = var.data_factory_id
  sas_uri             = var.sas_uri
  key_vault_sas_token {
    linked_service_name = var.linked_service_name
    secret_name = var.secret
  }
  description         = var.description
}