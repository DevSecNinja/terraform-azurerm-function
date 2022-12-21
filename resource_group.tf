#
# Resource Groups
#

resource "azurerm_resource_group" "function" {
  name     = azurecaf_name.function.results["azurerm_resource_group"]
  location = var.location
  tags     = var.tags
}
