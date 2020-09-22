provider "azurerm" {
	version = "1.44.0"
	subscription_id = "c12b1435-18a5-45f1-a646-c779c633e6b4"
	features {}
}

resource "azurerm_resource_group" "rg" {
	name = "resourceGroupBuho"
	location = "West US"
}

resource "azurerm_container_registry" "acr" {
	name = "acrBuho"
	resource_group_name = azurerm_resource_group.rg.name
	location = azurerm_resource_group.rg.location
	sku = "Basic"
	admin_enabled = true
}
