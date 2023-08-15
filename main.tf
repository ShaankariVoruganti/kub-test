terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
}

provider "azurerm" {
  features {}
client_id= "e7872244-12cf-4535-8884-dbcc07e91e9e"
client_secret= "5O48Q~jrBLbWhnZ4RwtAc4mzwI7fQys5BLo6Mali"
tenant_id= "a81cf97c-ef59-4c28-a9a5-15de98fce51b"
subscription_id="4f9b03a1-6c02-4fb5-9505-d3e99e26e2ff"
}

resource "azurerm_resource_group" "resource-group" {
  name     = "MY-RG-test"
  location = "West Europe"
}
resource "azurerm_kubernetes_cluster" "default" {
  name                = "aks90237"
  location            = azurerm_resource_group.resource-group.location
  resource_group_name = azurerm_resource_group.resource-group.name
  dns_prefix          = "aksdnspre90237"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_B2s"
    os_disk_size_gb = 30
  }

  service_principal {
 client_id     = "e7872244-12cf-4535-8884-dbcc07e91e9e"
client_secret = "5O48Q~jrBLbWhnZ4RwtAc4mzwI7fQys5BLo6Mali"

  }

  role_based_access_control_enabled = true

  tags = {
    environment = "Demo"
  }
}
