variable "proxmox_url" {
  type = string
}
variable "pm_api_token_id" {
  type = string
  sensitive = true
}
variable "pm_api_token_secret" {
  type      = string
  sensitive = true
}
variable "proxmox_ssh_pass" {
  type = string
  sensitive = true
}

