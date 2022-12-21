#
# Resource Groups
#

resource "azurerm_resource_group" "function" {
  #ts:skip=accurics.azure.NS.272 No lock necessary
  name     = azurecaf_name.function.results["azurerm_resource_group"]
  location = var.location
  tags     = var.tags
}
