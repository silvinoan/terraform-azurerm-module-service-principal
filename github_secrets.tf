resource "github_actions_organization_secret" "this" {
  count = var.secret_quantity

  secret_name     = azuread_service_principal_password.these[count.index].display_name
  visibility      = "private"
  plaintext_value = azuread_service_principal_password.these[count.index].value
}
