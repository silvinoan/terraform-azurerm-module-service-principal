resource "time_rotating" "secret_renewal" {
  rotation_days = local.rotation_time
}

resource "azuread_service_principal_password" "these" {
  count = var.secret_quantity

  display_name         = format("%s_%d", azuread_application.this.display_name, count.index + 1)
  service_principal_id = azuread_service_principal.this.object_id
  end_date_relative    = local.rotation_time_in_hours

  rotate_when_changed = {
    rotation = time_rotating.secret_renewal.id
  }
}
