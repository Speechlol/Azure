#MSOnline\Connect-MsolService
Function Get-Info3S {
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]
        $Licencja
    )
    
        if ($Licencja='E3') {
            Get-MsolUser -MaxResults 999 | Where-Object {($_.licenses).AccountSkuId -match "3sdc:ENTERPRISEPACK"}
        
            }
    
        if ($Licencja='E5') {
         $usersE5 = Get-MsolUser -MaxResults 999 | Where-Object {($_.licenses).AccountSkuId -match "3sdc:MCOMEETADV"}
         $outE5 = ($usersE5).count
            }
    Write-Output "Jest $outE5 używanych przez użytkowników"
    
    param (
        [Parameter(Mandatory)]
        [string]
        $Export
    )
    
    if ($Export = 'Tak'){
    $usersE5 | Out-file C:\temp\EnterprisePremiumUsers.csv
    }
    
}




