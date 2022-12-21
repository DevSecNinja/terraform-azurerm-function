#
# Policy Exemptions
#

resource "azurerm_resource_group_policy_exemption" "function_storage" {
  for_each = var.policy_assignment_ids_to_exempt

  # TODO: Do we need to have an index on name or are identical names allowed?
  name                 = "${var.purpose}_function_policy_exemption"
  display_name         = "Exception for function ${var.purpose}"
  resource_group_id    = azurerm_resource_group.function.id
  policy_assignment_id = each.value
  exemption_category   = "Waiver"
}
