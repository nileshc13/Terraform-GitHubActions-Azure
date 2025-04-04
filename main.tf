terraform {     
        backend "remote" {
         # The name of your Terraform Cloud organization.
           organization = "Demo-Project"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
        workspaces {
           name = "demo-workspace"
         }
      }
    
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "central india"
}
