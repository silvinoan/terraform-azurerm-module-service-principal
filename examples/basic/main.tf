module "service_principal" {
  source = "../.."
}

output "service_principal" {
  value = module.service_principal
}
