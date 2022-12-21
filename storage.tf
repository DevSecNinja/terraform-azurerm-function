#
# Storage
#

resource "azurerm_storage_account" "function" {
  name                      = azurecaf_name.function.results["azurerm_storage_account"]
  resource_group_name       = azurerm_resource_group.function.name
  location                  = azurerm_resource_group.function.location
  min_tls_version           = "TLS1_2"
  account_tier              = "Standard"
  account_replication_type  = "ZRS"
  enable_https_traffic_only = true
  tags                      = var.tags

  identity {
    type = "SystemAssigned"
  }

  depends_on = [
    azurerm_resource_group_policy_exemption.function_storage
  ]
}
