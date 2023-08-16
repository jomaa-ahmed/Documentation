# Terraform Infrastructure Provisioning

## Step 1: Set Up Terraform Project and Configure Backend

```bash
# Run this command in your project directory
terraform init

Step 2: Create Terraform Configuration File
provider "YOUR_CLOUD_PROVIDER" {
  # Provider configuration
}

resource "YOUR_CLOUD_PROVIDER_virtual_network" "my_network" {
  # Virtual network configuration
}

# Define other resources (subnet, security group, public IP)

resource "YOUR_CLOUD_PROVIDER_virtual_machine" "my_vm" {
  # Virtual machine configuration
}


Step 2: Create Terraform Configuration File

variable "instance_size" {
  description = "Size of the virtual machine instance"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "network_cidr" {
  description = "CIDR block for the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}


# Run this command to apply the configuration
terraform apply



