Peering virtual networks using latest azure power shell module
==============================================================

            

Install the latest version of NewAzpowershell module by following this guide


[https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-1.3.0](https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-1.3.0)


Install the latest network Az.Network – 1.2.0 version module for Azure Resource Manager in Windows PowerShell and PowerShell Core by following this guide


[https://www.powershellgallery.com/packages/Az.Network/1.2.0](https://www.powershellgallery.com/packages/Az.Network/1.2.0)


Now, you can use new AZ PowerShell module to connect Azure Subscriptions. Previously, we were using VPN gateway for connecting different subscriptions Virtual Network to Virtual Network. Now, you can use VNet Peering to connect virtual networks in the same
 Azure region or different Azure regions. The virtual networks can be in the same Azure subscription or in different subscriptions, as long as they share the same Azure AD tenant. You can use this PowerShell script to implement VNet Peering across different
 Azure Active Directory Tenants.


 

 

        
    
TechNet gallery is retiring! This script was migrated from TechNet script center to GitHub by Microsoft Azure Automation product group. All the Script Center fields like Rating, RatingCount and DownloadCount have been carried over to Github as-is for the migrated scripts only. Note : The Script Center fields will not be applicable for the new repositories created in Github & hence those fields will not show up for new Github repositories.
