# Azure Enterprise Landing Zone: Modular Infrastructure

> Standardized foundation for VMSS deployments using Terraform.

## 🏗️ Architecture Overview
<p align="center">
  <img src="./images/HLD.png" width="500" alt="Architecture Diagram" />
</p>

## Project Structure

```text
INFRASTRUCTURE/
├── environments/
│   ├── dev/
│   └── prod/
└── modules/
    ├── azurerm_application_gateway/
    ├── azurerm_bastion/
    ├── azurerm_compute/
    ├── azurerm_keyvault/
    ├── azurerm_log_analytics_workspace/
    ├── azurerm_networking/
    ├── azurerm_resource_group/
    ├── azurerm_sql_db/
    ├── azurerm_sql_server/
    └── azurerm_storage_account/