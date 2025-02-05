
<#Creacion de administradores#>
for ($i = 1; $i -le 2; $i++) {
   
    New-ADUser -Name "usuExamen$i" -SamAccountName "usuEXAMEN$i" -UserPrincipalName "usuExamen$i@rodrigues.local" -AccountPassword (ConvertTo-SecureString -AsPlainText 'P@assword0' -Force) -Path 'OU=Users,DC=rodrigues,DC=local' -Enable $True -ChangePasswordAtLogon $false
    Write-Host "Usuario usuExamen$i creado correctamente." -ForegroundColor Green
}
