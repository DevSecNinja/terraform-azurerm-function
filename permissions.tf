#
# Permissions
#

resource "azurerm_role_assignment" "function_to_storage" {
  scope                = azurerm_storage_account.function.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_linux_function_app.function.identity[0].principal_id
}
