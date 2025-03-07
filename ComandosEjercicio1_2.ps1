
#Crea los grupos: Trabajadores y Responsables
New-LocalGroup -Name "Trabajadores" -Description "Grupo de trabajadores"
New-LocalGroup -Name "Responsables" -Description "Grupo de responsables"
#FABRICIA RODRIGUES ROSA
#Crea los usuarios Trabajador1, …, Trabajador5 que deben pertenecer al grupo Trabajadores. Además, sus cuentas caducan dentro de un año. 

1..5 | ForEach-Object {New-LocalUser -Name Trabajador$_ -Password (ConvertTo-SecureString "Contraseña123" -AsPlainText -Force) -AccountExpires (Get-Date).AddYears(1)} #aqui pone que el usuario caduca en dos años
1..5 | ForEach-Object {Add-LocalGroupMember -Group "Trabajadores" -Member Trabajador$_}
#FABRICIA RODRIGUES ROSA 2025

#Crea los usuarios Responsable1 y Responsable2 que deben pertenecer al grupo Responsables.

1..2 | ForEach-Object {New-LocalUser -Name Responsable$_ -Password (ConvertTo-SecureString "Contraseña123" -AsPlainText -Force) -AccountExpires (Get-Date).AddYears(1)}

1..2 | ForEach-Object {Add-LocalGroupMember -Group "Responsables" Member Responsable$_}
#FABRICIA RODRIGUES ROSA 2025

#Crea el usuario Informatico que debe pertenecer al grupo Administradores y su contraseña nunca expira.


New-LocalUser -Name Informatico -Password (ConvertTo-SecureString "Contraseña123" -AsPlainText -Force) -PasswordNeverExpires #esto hace que su contraseña nunca expire
Add-LocalGroupMember -Group "Administradores" -Member Informatico
#FABRICIA RODRIGUES ROSA 2025

New-LocalUser -Name nuevo_usuario -Password (ConvertTo-SecureString "Contraseña123" -AsPlainText -Force) -AccountNeverExpires
#FABRICIA RODRIGUES ROSA 2025

#Ver los grupos y usuarios creados

Get-LocalGroup "Trabajadores"
Get-LocalGroup "Responsables"
Get-LocalUser -Name nuevo_usuario
Get-LocalUser -Name Informatico
Get-LocalUser -Name Trabajador1
Get-LocalUser -Name Trabajador2
Get-LocalUser -Name Trabajador3
Get-LocalUser -Name Trabajador4
Get-LocalUser -Name Trabajador5
Get-LocalUser -Name Responsable1
Get-LocalUser -Name Responsable2
