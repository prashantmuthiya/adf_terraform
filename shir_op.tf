resource "azurerm_data_factory_integration_runtime_self_hosted" "example" {
  name                = var.ir_name
  data_factory_id     = var.data_factory_id
  description         = var.description
 # tags                = var.tags

  # Auth keys (can be multiple)
#  dynamic "auth_key" {
 #   for_each = var.auth_keys != null ? var.auth_keys : []
 #   iterator = key
 #   content {
 #     key_name  = key.value["key_name"]
 #     key_value = key.value["key_value"]
 #   }
 # }

  # Linked integration runtime configuration
#  dynamic "linked_info" {
#    for_each = var.linked_infos != null ? var.linked_infos : []
#    iterator = link
#    content {
#      linked_integration_runtime_id = link.value["linked_integration_runtime_id"]
#      authorization_type            = link.value["authorization_type"]
#    }
#  }

  # Timeouts (create, update, delete)
  dynamic "timeouts" {
    for_each = var.timeouts != null ? [var.timeouts] : []
    content {
      create = timeouts.value["create"]
      update = timeouts.value["update"]
      delete = timeouts.value["delete"]
    }
  }
}

# RBAC Assignment for Integration Runtime
resource "azurerm_role_assignment" "example" {
  scope                = var.data_factory_id
  role_definition_name = var.role_definition_name
  principal_id         = var.principal_id
}
