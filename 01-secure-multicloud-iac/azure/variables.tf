variable "azure_region" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "secure-multicloud"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "vnet_cidr" {
  description = "VNet CIDR block"
  type        = string
  default     = "10.1.0.0/16"
}

variable "private_subnet_cidr" {
  description = "Private subnet CIDR"
  type        = string
  default     = "10.1.1.0/24"
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_B1s"
}
