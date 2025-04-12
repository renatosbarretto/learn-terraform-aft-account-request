module "network_hub" {
  source = "../modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "renatosbarretto+aws-network-hub@gmail.com"
    AccountName               = "core-network"
    ManagedOrganizationUnit = "Network"  # Nova OU dedicada para Network
    SSOUserEmail             = "renatosbarretto+aws-network-hub@gmail.com"
    SSOUserFirstName         = "Network"
    SSOUserLastName          = "Hub"
  }
   
  account_tags = {
    "Environment" = "Production"
    "Purpose"     = "Network Hub"
    "ManagedBy"  = "AFT"
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

  account_customizations_name = "core-network"
} 
