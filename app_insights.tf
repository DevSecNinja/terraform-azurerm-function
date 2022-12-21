resource "azurerm_application_insights" "function" {
  name                      = azurecaf_name.function.results["azurerm_application_insights"]
  resource_group_name       = azurerm_resource_group.function.name
  location                  = azurerm_resource_group.function.location
  tags                      = var.tags

  application_type    = "web"
}