\\ All users without license

Get-AzureADUser -All:$true | %{ 
  if ($(Get-AzureADUserLicenseDetail -ObjectId $_.UserPrincipalName) -eq $null) { $_.DisplayName } 
}

\\ Directly assinged license

Get-MsolUser -All | %{ 
    $user = $_
 
    foreach ($license in $user.Licenses) {
        if ($license.GroupsAssigningLicense[0].ToString() -eq $user.ObjectId) {
            Write-Host "$($User.UserPrincipalName) has $($license.AccountSkuId) assigned directly"
        }
    }
}
