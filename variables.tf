variable "num" {
  description = "Specify the amount of Windows agents."
}

variable "cluster_name" {
  description = "Name of the DC/OS cluster"
}

variable "location" {
  description = "Azure Region"
}

variable "name_prefix" {
  description = "Name Prefix"
  default     = ""
}

variable "vm_size" {
  description = "Azure virtual machine size"
}

variable "dcos_instance_os" {
  description = "Operating system to use. Instead of using your own AMI you could use a provided OS."
  default     = "windows_1809"
}

variable "image" {
  description = "Source image to boot from"
  type        = "map"
  default     = {}
}

variable "disk_type" {
  description = "Disk Type to Leverage"
  default     = "Standard_LRS"
}

variable "disk_size" {
  description = "Disk Size in GB"
  default     = "120"
}

variable "resource_group_name" {
  description = "Name of the azure resource group"
}

variable "custom_data" {
  description = "User data to be used on these instances (cloud-init)"
  default     = ""
}

variable "admin_username" {
  description = "Windows admin user"
  default     = "dcosadmin"
}

variable "tags" {
  description = "Add custom tags to all resources"
  type        = "map"
  default     = {}
}

variable "hostname_format" {
  description = "Format the hostname inputs are index+1, region, cluster_name"
  default     = "winagt-%[1]d-%[2]s"
}

variable "subnet_id" {
  description = "Subnet ID"
}

variable "network_security_group_id" {
  description = "Security Group Id"
  default     = ""
}

variable "avset_platform_fault_domain_count" {
  description = "Availability set platform fault domain count, differs from location to location"
  default     = 3
}
