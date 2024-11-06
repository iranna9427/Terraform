variable "rg_name" {
  default = "terraform_rg"
  type    = string
}

variable "location" {
  default = "westus2"
}

variable "address_space" {
  default = ["10.1.0.0/16"]
  type    = list(string)
}

variable "vnet_name" {
  default = "terraform_vnet"
  type    = string
}
variable "subnet_space" {
  default = ["10.1.0.0/24", "10.1.10.0/24"]
  type    = list(string)
}

variable "subnet_name" {
  default = "terraform_snet"
}

variable "nic_name" {
  default = "nic"
}
variable "pip_name" {
  default = "pip"
}
variable "ip_name" {
  default = "ip"
}

variable "vm_name" {
  default = "vm"
}
variable "admin" {
  default = "azureuser"
}
variable "size" {
  default = "Standard_B1s"
}
variable "nsg" {
  default = "nsg"
}
variable "windows_admin_username" {
  description = "Admin username for the Windows VM"
  type        = string
  default     = "winadmin"
}

variable "windows_admin_password" {
  description = "Admin password for the Windows VM"
  type        = string
  default     = "Ajio@123"
}

