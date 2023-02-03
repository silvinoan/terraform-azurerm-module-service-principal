resource "azurerm_role_assignment" "contributor_on_subscription" {
  scope                = data.azurerm_subscription.current.id
  role_definition_name = "Contributor"
  principal_id         = data.azurerm_client_config.current.object_id
}
