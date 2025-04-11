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

module "test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "renatosbarretto+aws-test@gmail.com"
    AccountName               = "test"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "renatosbarretto+aws-test@gmail.com"
    SSOUserFirstName          = "Test"
    SSOUserLastName           = "AFT"
  }
   
  account_tags = {
    "Environment" = "Test"
    "Purpose"     = "Testing"
  }

  change_management_parameters = {
    change_requested_by = "Renato"
    change_reason       = "Creating test environment"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "test"
}


