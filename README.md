# Azure Custom Translator Terraform

This repository contains Terraform configuration files to create an Azure Custom Translator resource, which is part of Azure Cognitive Services. The Custom Translator allows you to build customized translation models for your specific domain.

## Features

- 🚀 **DevContainer Support**: Pre-configured development environment with Terraform and Azure CLI
- 🛡️ **Best Practices**: Follows Terraform and Azure security best practices
- 📝 **Comprehensive Documentation**: Clear setup and usage instructions
- 🔧 **Configurable**: Flexible configuration through variables
- 🏷️ **Tag Support**: Consistent resource tagging

## Prerequisites

- Azure subscription
- One of the following:
  - **Option 1**: Visual Studio Code with DevContainer support (recommended)
  - **Option 2**: Local installation of:
    - [Terraform](https://www.terraform.io/downloads.html) (>= 1.0)
    - [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

## Quick Start

### Option 1: Using DevContainer (Recommended)

1. Clone this repository
2. Open in Visual Studio Code
3. When prompted, click "Reopen in Container" or use Command Palette: `Remote-Containers: Reopen in Container`
4. The container will automatically install Terraform and Azure CLI

### Option 2: Local Setup

1. Clone this repository
2. Install Terraform and Azure CLI locally
3. Continue with the usage steps below

## Usage

### 1. Authentication

Login to Azure:

```bash
az login
```

### 2. Configuration

Copy the example variables file and customize it:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Edit `terraform.tfvars` with your desired values:

```hcl
resource_group_name     = "rg-my-custom-translator"
location                = "East US"
custom_translator_name  = "my-custom-translator-001"
sku_name               = "S1"

tags = {
  Environment = "production"
  Purpose     = "CustomTranslator"
  Owner       = "MyTeam"
  CostCenter  = "IT"
}
```

### 3. Deploy

Initialize and apply the Terraform configuration:

```bash
# Initialize Terraform
terraform init

# Plan the deployment
terraform plan

# Apply the configuration
terraform apply
```

### 4. Get Outputs

After deployment, you can get the important information:

```bash
# Get all outputs
terraform output

# Get specific outputs
terraform output custom_translator_endpoint
terraform output -raw custom_translator_primary_access_key
```

## Configuration Options

### Variables

| Variable | Description | Type | Default | Required |
|----------|-------------|------|---------|----------|
| `resource_group_name` | Name of the resource group | `string` | `"rg-custom-translator"` | No |
| `location` | Azure region | `string` | `"East US"` | No |
| `custom_translator_name` | Name of the Custom Translator service | `string` | N/A | Yes |
| `sku_name` | SKU for the service | `string` | `"S1"` | No |
| `tags` | Resource tags | `map(string)` | See variables.tf | No |

### Available SKUs

- `F0`: Free tier (limited requests)
- `S1`: Standard tier
- `S2`: Standard tier (higher throughput)
- `S3`: Standard tier (even higher throughput)
- `S4`: Standard tier (maximum throughput)

## Outputs

The module provides the following outputs:

- `resource_group_name`: Name of the created resource group
- `resource_group_id`: ID of the resource group
- `custom_translator_id`: ID of the Custom Translator service
- `custom_translator_name`: Name of the Custom Translator service
- `custom_translator_endpoint`: Service endpoint URL
- `custom_translator_primary_access_key`: Primary access key (sensitive)
- `custom_translator_secondary_access_key`: Secondary access key (sensitive)

## Clean Up

To destroy the created resources:

```bash
terraform destroy
```

## Security Considerations

- Access keys are marked as sensitive outputs
- The `terraform.tfvars` file is ignored by git to prevent accidentally committing secrets
- Use Azure Key Vault for production environments to store access keys
- Consider using Azure Managed Identity for authentication instead of access keys

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test the changes
5. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For issues related to:
- **This Terraform code**: Open an issue in this repository
- **Azure Custom Translator service**: Consult the [Azure documentation](https://docs.microsoft.com/en-us/azure/cognitive-services/translator/custom-translator/)
- **Terraform**: Check the [Terraform documentation](https://www.terraform.io/docs/)