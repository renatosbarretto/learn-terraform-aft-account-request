module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
<<<<<<< HEAD
    AccountEmail              = "renatosbarretto+aws-sandbox@gmail.com"
    AccountName               = "sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "renatosbarretto+aws-sandbox@gmail.com"
=======
    AccountEmail              = "renatosbarretto+awssandbox@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "renatosbarretto+aws+sandbox@gmail.com"
>>>>>>> parent of 371d5b2 (.)
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


module "teste-renato" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "renatosbarretto+aws-teste@gmail.com"
    AccountName               = "teste-renato"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "renatosbarretto+aws-testex@gmail.com"
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
