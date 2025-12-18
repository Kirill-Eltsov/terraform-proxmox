#секция установки провайдера
terraform {
    required_version = ">= 0.13"
    
    required_providers {
        proxmox = {
            # Провайдер Telmate/proxmox (будем ставить его локально вручную)
            source  = "Telmate/proxmox"
            version = "3.0.2-rc06"
        }
    }
}

#секция подключения к кластеру/ноде
provider "proxmox" {
    pm_tls_insecure      = true
    pm_api_url           = var.proxmox_api_url
    pm_api_token_id      = var.proxmox_api_token_id
    pm_api_token_secret  = var.proxmox_api_token_secret
    pm_debug             = false
    pm_log_enable        = false
}