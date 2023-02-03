variable "management_group" {
  description = "(Optional) Azure's Management Group to which the Service Principal should be deployed."

  type     = string
  nullable = false
  default  = "cross"
}

variable "environment" {
  description = "(Optional) Environment to which the Service Principal should be deployed."

  type     = string
  nullable = false
  default  = "dev1"

  validation {
    condition     = length(var.environment) == 4
    error_message = "The environment's string length should be of exactly 4 characters, yours has ${length(var.environment)}."
  }

  validation {
    condition     = can(regex("^[[:alpha:]]{3}[[:digit:]]{1}$", var.environment))
    error_message = "The environment's string should have exactly 3 characters and 1 digit, e.g. \"dev1\"."
  }
}

variable "secret_quantity" {
  description = "(Optional) How many secrets should be deployed for this Service Principal, max value is 10."

  type     = number
  nullable = false
  default  = 1

  validation {
    condition     = var.secret_quantity <= 10
    error_message = "The limit amount of secrets is 10, yours was ${var.secret_quantity}"
  }
}

variable "purpose" {
  description = "(Optional) What is the purpose of this Service Principal in a maximum of 3 characters, e.g. \"Workflow\" as \"wf\"."

  type     = string
  nullable = false
  default  = "wf"

  validation {
    condition     = length(var.purpose) <= 3
    error_message = "The purpose's string length should be of 3 or less characters, yours has ${length(var.purpose)}."
  }
}

variable "application_index" {
  description = "(Optional) Override default sequential at the end of the Application's Display Name, e.g. \"001\"."

  type     = string
  nullable = false
  default  = "001"

  validation {
    condition     = can(regex("^[[:digit:]]{3}$", var.application_index))
    error_message = "The application index's string should have exactly 3 digits, e.g. \"001\" or \"987\"."
  }
}
