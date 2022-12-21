# Azure Function Terraform Module

This Terraform module allows you to easily create an Azure Function.

## 📌 Features

- Creates a new Azure resource group
- Creates an Azure Function
- Creates a storage account for the function
- Allows you to specify policy exemptions that need to be requested
- Deploys the resources based on CAF Naming Conventions

## 🔧 Usage

To use this module, you will need to have an Azure account and access to the Azure CLI with Terraform installed.
I heavily rely on the [terraform-azurerm-caf-enterprise-scale](https://github.com/Azure/terraform-azurerm-caf-enterprise-scale) and the [terraform-azurerm-lz-vending](https://github.com/Azure/terraform-azurerm-lz-vending) modules, hence some of the references to e.g. the management & connectivity subscriptions.

> **_NOTE:_** I always suggest to use the `ref` argument to select a specific version.

```` terraform
module "yourApp" {
  source = "github.com/DevSecNinja/terraform-azurerm-function?ref=v0.1.0"

  ### Important
  purpose   = "yourApp"

  ## Optional
  location = "northeurope"
  tags     = local.tags

  policy_assignment_ids_to_exempt = [
    "/providers/Microsoft.Management/managementGroups/yourCompanyName-corp/providers/Microsoft.Authorization/policyAssignments/Deny-Public-Endpoints"
  ]

  providers = {
    azurerm              = azurerm.yourSubscription
  }
}
````

## 🤝 Contributions

I welcome contributions to this project! If you have an idea for a feature or improvement, please open an issue or pull request. If you find this project helpful, I would also appreciate it if you could leave a star on the GitHub repository 🌟

Thank you for considering contributing 🙏

## 📜 License

This project is licensed under the MIT License. It is not affiliated with my employer.

Feel free to use and modify the code as you see fit 🎉

## 📄 Terraform Documentation

I'm using `terraform-docs` to update my documentation automatically:

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
