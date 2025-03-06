resource "azurerm_data_factory_linked_service_azure_blob_storage" "example" {
  name            = var.linked_service_name
  data_factory_id = var.data_factory_id
  description     = var.description

  connection_string_insecure = var.connection_string_insecure

  key_vault_sas_token { 
    linked_service_name = "AzureKeyVaultLinkedService"  # Ensure this is the correct linked service name for your Key Vault
    secret_name         = var.secret
  }

  additional_properties = {}
}

