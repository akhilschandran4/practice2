terraform {
  backend "azurerm" {
    storage_account_name = "mystorageaccount11111"
    container_name = "terraform-state"
    key = "terraform.tfstate"
    resource_group_name  = "myresourcegroup111111"
   /*
    subscription_id = "3457d5d0-1535-40c6-85fb-cb1919104698"
    client_id = "00000000-0000-0000-0000-000000000000"
    client_secret = "mysecret"
    tenant_id = "00000000-0000-0000-0000-000000000000"*/
  }
}
resource "azurerm_resource_group" "example" {
  name     = "myresourcegroup111111"
  location = "West Europe"
}
data "azurerm_storage_account" "mystorageaccount11111" {
  name                = "mystorageaccount11111"
  resource_group_name = "myresourcegroup111111"
}

output "storage_account_tier" {
  value = data.azurerm_storage_account.mystorageaccount11111.account_tier
}