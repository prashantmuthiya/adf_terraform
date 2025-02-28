variable "ir_name" {
  description = "The name of the self-hosted integration runtime."
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Azure Data Factory where the self-hosted IR will be created."
  type        = string
}

variable "description" {
  description = "A description for the self-hosted integration runtime."
  type        = string
  default     = "Self-hosted IR"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "auth_keys" {
  description = "A list of authorization keys for the self-hosted IR."
  type = list(object({
    key_name  = string
    key_value = string
  }))
  default = []
}

variable "linked_infos" {
  description = "A list of linked integration runtime information."
  type = list(object({
    linked_integration_runtime_id = string
    authorization_type            = string
  }))
  default = []
}

variable "timeouts" {
  description = "Timeout settings for the self-hosted IR."
  type = object({
    create = string
    update = string
    delete = string
  })
  default = {
    create = "30m"
    update = "30m"
    delete = "30m"
  }
}

variable "role_definition_name" {
  description = "The role definition name for RBAC (e.g., 'Contributor', 'Owner', etc.)"
  type        = string
}

variable "principal_id" {
  description = "The principal ID (client/service principal or managed identity) to assign RBAC."
  type        = string
}
