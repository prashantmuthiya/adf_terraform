variable "azurerm_data_factory" {
  type = string
  default = "adf"
}
variable "key_vault_secret_name" {
  default = "sql-connection-string"
}

variable "key_vaults" {
  default = {
    kv1 = {
      name         = "keyvault-linked-service-1"
      key_vault_id = "null"
      annotations = [
        { name = "Owner", value = "TeamA" },
        { name = "Purpose", value = "SQLSecrets" }
      ]
    }
  }
}



variable "key_vaults_id" {
  type = string
  default = "key_vault_id"
}
