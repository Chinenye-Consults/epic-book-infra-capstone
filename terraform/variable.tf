variable "resource_group_name" {
  default = "epicbook-rg"
}

variable "location" {
  default = "westeurope"
}

variable "admin_username" {
  default = "chinenye"
}

variable "ssh_public_key" {
  description = "Path to the SSH public key"
  default     = "~/.ssh/id_ed25519.pub"
}