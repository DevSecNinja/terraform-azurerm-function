#
# CAF Naming
#

resource "azurecaf_name" "function" {
  resource_types = ["azurerm_function_app", "general", "azurerm_resource_group", "azurerm_storage_account", "azurerm_application_insights"]
  prefixes       = []
  suffixes       = [var.purpose]
  clean_input    = true
}
