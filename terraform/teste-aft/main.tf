module "teste_aft" {
  source = "../../modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "renatosbarretto+aws-teste_aft@gmail.com"
    AccountName               = "teste_aft"
    ManagedOrganizationalUnit = "Management"
    SSOUserEmail              = "renatosbarretto+aws-teste_aft@gmail.com"
    SSOUserFirstName          = "Network"
    SSOUserLastName          = "Hub"
  }
   
  account_tags = {
    "Environment" = "Production"
    "Purpose"     = "Network Hub"
    "ManagedBy"   = "AFT"
    "Owner"       = "Cloud Team"
    "Network"     = "Core"
  }

  change_management_parameters = {
    change_requested_by = "Cloud Team"
    change_reason       = "Creating network hub account for Transit Gateway and centralized networking"
  }

  custom_fields = {
    group = "prod"
    network_tier = "core"
  }

  account_customizations_name = "teste_aft"
} 