resource "azurerm_data_factory_linked_service_azure_sql_database" "example" {
  name                        = var.linked_service_name
  data_factory_id             = var.data_factory_id
  description                 = var.description
  integration_runtime_name    = var.integration_runtime_name
  connection_string           = var.connection_string 

  key_vault_connection_string { 
    linked_service_name = var.key_vault_linked_service_name
    secret_name         = var.key_vault_secret_name
  }

  parameters = var.parameters

  annotations = var.annotations
  additional_properties = var.additional_properties

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}


/*
module "adf_sql_linked_service" {
  source = "../path/to/your/module"

  linked_service_name           = "example-sql-linked-service"
  data_factory_id               = "your-data-factory-id"
  description                   = "Example SQL linked service"
  integration_runtime_name      = "AutoResolveIntegrationRuntime"

  connection_string             = "Server=tcp:your-sql-server.database.windows.net,1433;Database=your-database;User ID=your-user;Password=your-password;"

  key_vault_linked_service_name = "example-key-vault-linked-service"
  key_vault_secret_name         = "example-connection-string-secret"

  parameters = {
    Environment = "UAT"
    Region      = "West Europe"
  }

  annotations = ["example", "sql", "linked-service"]

  additional_properties = {
    customProperty = "customValue"
  }

  create_timeout = "30m"
  read_timeout   = "30m"
  update_timeout = "30m"
  delete_timeout = "30m"
}

output "linked_service_id" {
  value = module.adf_sql_linked_service.linked_service_id
}
*/