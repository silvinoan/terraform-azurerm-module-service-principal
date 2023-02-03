resource "azuread_application" "this" {
  display_name = local.application_name
  owners       = [data.azuread_client_config.current.object_id]
}
