# Azure Storage Account
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Data Factory Linked Service (for Storage Account)
resource "azurerm_data_factory_linked_service_azure_blob_storage" "example" {
  name            = var.linked_service_name
  data_factory_id = var.data_factory_id
  connection_string = azurerm_storage_account.example.primary_connection_string
  description     = "Linked Service to connect Data Factory with Storage Account"
}

# Data Factory Data Flow
resource "azurerm_data_factory_data_flow" "example" {
  name            = var.data_flow_name
  data_factory_id = var.data_factory_id
  description     = var.description

  dynamic "source" {
    for_each = var.sources
    iterator = source_block

    content {
      name                = source_block.value.name
    #  dataset_name        = source_block.value.dataset_name
    #  linked_service_name = azurerm_data_factory_linked_service_azure_blob_storage.example.name
    #  type                = source_block.value.type
    #  schema              = source_block.value.schema
    }
  }

  dynamic "sink" {
    for_each = var.sinks
    iterator = sink_block

    content {
      name                = sink_block.value.name
    #  dataset_name        = sink_block.value.dataset_name
    #  linked_service_name = azurerm_data_factory_linked_service_azure_blob_storage.example.name
    #  type                = sink_block.value.type
    #  schema              = sink_block.value.schema
    }
  }

  dynamic "transformation" {
    for_each = var.transformations
    iterator = transform_block

    content {
      name        = transform_block.value.name
      description = transform_block.value.description
    }
  }

  depends_on = [
    azurerm_data_factory_linked_service_azure_blob_storage.example
  ]
}
