terraform {
  backend "remote" {
    organization = "Demo-Project"  # Check this name carefully

    workspaces {
      name = "demo-workspace"  # Ensure this workspace exists
    }
  }
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "Central India"  # Location name is case-sensitive (Capital "C" in "Central India")
}
