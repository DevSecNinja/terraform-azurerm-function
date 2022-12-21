#
# CAF Naming
#

resource "azurecaf_name" "function" {
  resource_types = ["azurerm_function_app", "general", "azurerm_resource_group", "azurerm_storage_account"]
  prefixes       = []
  suffixes       = [var.purpose, var.purpose]
  clean_input    = true
}
