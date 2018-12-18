# Remove-Module -Name AzureRM # May require manual uninstall via windows control panel
Install-Module -Name AzureRM -AllowClobber
# Uninstall-Module SharePointPnPPowerShellOnline -Force ## Had to remove this via windows uninstall
Install-Module SharePointPnPPowerShellOnline -SkipPublisherCheck -AllowClobber 
Update-Module SharePointPnPPowerShellOnline

Connect-PnPOnline -Url https://internuntiusmp.sharepoint.com/
# must be run from sp-dev-modernization\Solutions\PageTransformationUI\provisioning
Apply-PnPTenantTemplate -Path .\modernization.pnp -Parameters @{"AzureAppID"="d2a70753-8ddb-4ceb-8360-9cd09c8d9bcb";"AzureFunction"="https://sharepointpagemodernizerapp.azurewebsites.net"}

