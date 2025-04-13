module "sandbox" {
  source = "aws-ia/control_tower_account_factory/aws"
  version = "1.10.0"
  
  control_tower_parameters = {
    AccountEmail              = "renatosbarretto+aws-sandbox@gmail.com"
    AccountName              = "sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail             = "renatosbarretto+aws-sandbox@gmail.com"
    SSOUserFirstName         = "Sandbox"
    SSOUserLastName          = "Environment"
  }

  account_tags = {
    "Environment" = "Sandbox"
    "Purpose"     = "Testing and Development"
    "ManagedBy"   = "AFT"
    "Owner"       = "Cloud Team"
  }

  change_management_parameters = {
    change_requested_by = "Cloud Team"
    change_reason      = "Creating sandbox environment for testing and development"
  }

  custom_fields = {
    group = "sandbox"
    environment_type = "testing"
  }

  account_customizations_name = "sandbox"
}

module "teste_aft_account" {
  source = "./teste-aft"
}