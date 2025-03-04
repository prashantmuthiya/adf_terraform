variable "sftp_linked_service_name" {
  description = "The name of the SFTP linked service."
  type        = string
  default     = "ls_name"
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = "id"
}

variable "description" {
  description = "The description of the linked service."
  type        = string
  default     = ""
}

variable "host" {
  description = "The host of the SFTP server."
  type        = string
  default     = "hostname"
}

variable "port" {
  description = "The port of the SFTP server."
  type        = number
  default     = 22
}

variable "authentication_type" {
  description = "The authentication type (Basic or SSH)."
  type        = string
  default     = "Basic"
}

variable "password" {
  description = "The password for Basic authentication."
  type        = string
  default     = null
}

variable "username" {
  description = "the username for basic authentication"
  type        = string
  default     = null
}