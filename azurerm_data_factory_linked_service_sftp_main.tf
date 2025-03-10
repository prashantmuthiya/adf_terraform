variable "sftp_linked_service_name" {
  description = "The name of the SFTP linked service."
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which to create the linked service."
  type        = string
  default     = null
}

variable "description" {
  description = "A description for the linked service."
  type        = string
  default     = null
}

variable "authentication_type" {
  description = "The authentication type to use. Options are 'Basic', 'SshPublicKey', or 'MultiFactorAuthentication'."
  type        = string
  default     = null
}

variable "host" {
  description = "The SFTP server's host."
  type        = string
  default     = null
}

variable "port" {
  description = "The port to connect to on the SFTP server."
  type        = number
  default     = null
}

variable "username" {
  description = "The username to use for authentication."
  type        = string
  default     = null
}

variable "password" {
  description = "The password to use for Basic authentication."
  type        = string
  default     = null
}

variable "private_key_content" {
  description = "The private key content for SshPublicKey authentication."
  type        = string
  default     = null
}

variable "pass_phrase" {
  description = "The passphrase for the private key, if required."
  type        = string
  default     = null
}

variable "encrypted_credential" {
  description = "The encrypted credential used by the linked service."
  type        = string
  default     = null
}

variable "integration_runtime_name" {
  description = "The name of the Integration Runtime to be associated with the linked service."
  type        = string
  default     = null
}

variable "annotations" {
  description = "List of annotations for the linked service."
  type        = list(string)
  default     = null
}

variable "parameters" {
  description = "A map of parameters to be passed to the linked service."
  type        = map(string)
  default     = null
}

variable "host_key_fingerprint" {
  description = "The host key fingerprint for SFTP server verification."
  type        = string
  default     = null
}

variable "skip_host_key_fingerprint" {
  description = "Whether to skip host key fingerprint verification."
  type        = bool
  default     = null
}

variable "create_timeout" {
  description = "Timeout for creating the linked service."
  type        = string
  default     = null
}

variable "read_timeout" {
  description = "Timeout for reading the linked service."
  type        = string
  default     = null
}

variable "update_timeout" {
  description = "Timeout for updating the linked service."
  type        = string
  default     = null
}

variable "delete_timeout" {
  description = "Timeout for deleting the linked service."
  type        = string
  default     = null
}
/*

// Example usage
module "sftp_linked_service" {
  source = "./path/to/this/module"

  sftp_linked_service_name = "example-sftp-linked-service"
  data_factory_id          = azurerm_data_factory.example.id
  description              = "SFTP linked service for data transfer."
  authentication_type      = "Basic"
  host                     = "sftp.example.com"
  port                     = 22
  username                 = "user"
  password                 = "password"
  encrypted_credential     = null
  integration_runtime_name = "example-integration-runtime"
  annotations              = ["example-annotation"]
  parameters               = { param1 = "value1" }
  host_key_fingerprint     = "example-fingerprint"
  skip_host_key_fingerprint = true
  create_timeout           = "30m"
  read_timeout             = "30m"
  update_timeout           = "30m"
  delete_timeout           = "30m"
}
*/
