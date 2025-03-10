resource "azurerm_data_factory_linked_service_azure_blob_storage" "this" {
  name            = var.linked_service_name
  data_factory_id = var.data_factory_id
  description     = var.description

  connection_string_insecure = var.connection_string_insecure

  key_vault_sas_token { 
    linked_service_name = var.key_vault_linked_service_name
    secret_name         = var.secret
  }

  integration_runtime_name = var.integration_runtime_name

  storage_kind          = var.storage_kind
  tenant_id             = var.tenant_id
  use_managed_identity  = var.use_managed_identity

  additional_properties = var.additional_properties

  annotations = var.annotations

  parameters = var.parameters

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}

output "linked_service_id" {
  description = "The ID of the linked service."
  value       = azurerm_data_factory_linked_service_azure_blob_storage.this.id
}

/*
module "adf_blob_linked_service" {
  source                         = "./modules/adf_blob_linked_service"
  
  linked_service_name             = "example-blob-linked-service"
  data_factory_id                 = azurerm_data_factory.example.id
  description                     = "Blob storage linked service for ADF"
  
  connection_string_insecure      = "DefaultEndpointsProtocol=https;AccountName=example;AccountKey=exampleKey;"
  key_vault_linked_service_name   = "example-keyvault-linked-service"
  secret                          = "storage-account-key"
  
  integration_runtime_name        = "AutoResolveIntegrationRuntime"
  storage_kind                    = "BlobStorage"
  tenant_id                       = "example-tenant-id"
  use_managed_identity            = true
  
  additional_properties           = { exampleProperty = "exampleValue" }
  annotations                     = ["example-annotation"]
  parameters                      = { exampleParam = "exampleValue" }
  
  create_timeout                  = "30m"
  read_timeout                    = "5m"
  update_timeout                  = "30m"
  delete_timeout                  = "30m"
}
*/