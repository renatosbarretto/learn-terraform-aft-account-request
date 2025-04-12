module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "renatosbarretto+aws-sandbox@gmail.com"
    AccountName               = "sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "renatosbarretto+aws-sandbox@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }
   

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "core-network" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "renatosbarretto+aws-core-network@gmail.com"
    AccountName               = "core-network"
    ManagedOrganizationalUnit = "Network"
    SSOUserEmail              = "renatosbarretto+aws-core-network@gmail.com"
    SSOUserFirstName          = "core-network"
    SSOUserLastName           = "AFT"
  }
   

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "core-network"
}