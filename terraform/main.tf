module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "renatosbarretto+aws-sandbox01@gmail.com"
    AccountName               = "sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "renatosbarretto+aws-sandbox01@gmail.com"
    SSOUserFirstName          = "Developers"
    SSOUserLastName           = "Team"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "dev-teams"
    no_default_vpc = "true"
  }

  account_customizations_name = "sandbox"
}


module "hub-network01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "renatosbarretto+aws-network01@gmail.com"
    AccountName               = "hub-network-01"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "renatosbarretto+aws-network01@gmail.com"
    SSOUserFirstName          = "Network"
    SSOUserLastName           = "Team"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "core-network-team"
    no_default_vpc = "true"
  }
  account_customizations_name = "hub-network01"
}
