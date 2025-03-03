variable "data_factory_id" {
    type = string
    default = ""
}
variable "connection_string" {
    type = string
    default = ""
}
variable "integration_runtime_name" {
    type = string
    default = ""
}
variable "use_key_vault" {
  default = false
}
variable "key_vault_linked_service_name" {
  default = ""
}
variable "sas_token_secret_name" {
  default = ""
}
variable "parameters" {
  type    = map(string)
  default = {}
}
variable "annotations" {
  type    = list(string)
  default = []
}
