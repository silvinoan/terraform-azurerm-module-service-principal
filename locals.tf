locals {
  application_name = "${local.management_group}${local.environment}spgh${local.purpose}${var.application_index}"

  management_groups = {
    "cross"    = "cs"
    "jazztech" = "jt"
    "arbi"     = "ab"
  }

  management_group = local.management_groups[lower(var.management_group)]

  environments = {
    "dev1" = "d1"
    "qa1"  = "q1"
    "hml1" = "h1"
    "sdx1" = "s1"
    "pre1" = "e1"
    "prd1" = "p1"
  }

  environment = local.environments[lower(var.environment)]

  purpose = lower(var.purpose)

  rotation_time = 15

  rotation_time_in_hours = format("%dh", local.rotation_time * 24)
}
