# Add the service principal application ID and secret here
$servicePrincipalClientId="ServicePrincipalApplicationId"
$servicePrincipalSecret="ENTER SECRET HERE"

# Download the package
function download() {$ProgressPreference="SilentlyContinue"; Invoke-WebRequest -Uri https://aka.ms/AzureConnectedMachineAgent -OutFile AzureConnectedMachineAgent.msi}
download

# Install the package
$exitCode = (Start-Process -FilePath msiexec.exe -ArgumentList @("/i", "AzureConnectedMachineAgent.msi" ,"/l*v", "installationlog.txt", "/qn") -Wait -Passthru).ExitCode
if($exitCode -ne 0) {
    $message=(net helpmsg $exitCode)
    throw "Installation failed: $message See installationlog.txt for additional details."
}

# Run connect command
& "$env:ProgramW6432\AzureConnectedMachineAgent\azcmagent.exe" connect --service-principal-id "$servicePrincipalClientId" --service-principal-secret "$servicePrincipalSecret" --resource-group "rg_arc" --tenant-id "5abb7cc8-1f0b-4cc6-8f84-264142f5ba57" --location "westeurope" --subscription-id "49fb486f-af79-4950-9de4-7a6622ddeee9" --cloud "AzureCloud" --correlation-id "f3be11e9-a27d-439d-90d1-ac399a80e000"

if($LastExitCode -eq 0){Write-Host -ForegroundColor yellow "To view your onboarded server(s), navigate to https://portal.azure.com/#blade/HubsExtension/BrowseResource/resourceType/Microsoft.HybridCompute%2Fmachines"}
