resource "azurerm_data_factory_linked_service_azure_blob_storage" "linked_service_azure_blob_storage" {
  name            = var.linked_service_name
  data_factory_id = var.data_factory_id
  description     = var.description
  

  key_vault_sas_token { 
    linked_service_name = var.linked_service_name  # Ensure this is the correct linked service name for your Key Vault
    secret_name         = var.secret
  }

  additional_properties = {
    sasuri = var.sas_uri
  }
}
