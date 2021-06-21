terraform {
  backend "azurerm" {
    storage_account_name = "mystorageaccount11111"
    container_name = "terraform-state"
    key = "terraform.tfstate"
    resource_group_name  = "myresourcegroup111111"
    subscription_id = "00000000-0000-0000-0000-000000000000"
    client_id = "00000000-0000-0000-0000-000000000000"
    client_secret = "mysecret"
    tenant_id = "00000000-0000-0000-0000-000000000000"
  }
}
data "azurerm_storage_account" "mystorageaccount11111" {
  name                = "mystorageaccount11111"
  resource_group_name = "myresourcegroup111111"
}

output "storage_account_tier" {
  value = data.azurerm_storage_account.mystorageaccount11111.account_tier
}