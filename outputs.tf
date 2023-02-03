output "application_information" {
  description = "Created Application's Information."
  value = {
    display_name    = azuread_application.this.display_name
    object_id       = azuread_application.this.object_id
    client_id       = azuread_application.this.application_id
    subscription_id = data.azurerm_subscription.current.subscription_id
    tenant_id       = data.azurerm_subscription.current.tenant_id
  }
}

output "secrets" {
  description = "Created Secrets' Information."
  value = {
    for index, password in azuread_service_principal_password.these : password.display_name =>
    [
      password.end_date,
      password.end_date_relative,
    ]
  }
}

