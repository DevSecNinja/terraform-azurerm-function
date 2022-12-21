#
# Function
#

resource "azurerm_service_plan" "function" {
  name                = azurecaf_name.function.results["general"]
  resource_group_name = azurerm_resource_group.function.name
  location            = azurerm_resource_group.function.location
  os_type             = "Linux"
  sku_name            = "Y1"
  tags                = var.tags
}

resource "azurerm_linux_function_app" "function" {
  name                = azurecaf_name.function.results["azurerm_function_app"]
  resource_group_name = azurerm_resource_group.function.name
  location            = azurerm_resource_group.function.location
  tags                = var.tags

  https_only = true

  storage_account_name          = azurerm_storage_account.function.name
  storage_uses_managed_identity = true
  service_plan_id               = azurerm_service_plan.function.id

  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY = "${azurerm_application_insights.function.instrumentation_key}"
  }

  site_config {}
  identity {
    type = "SystemAssigned"
  }
}
