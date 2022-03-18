$name = Read-Host "Veuillez entrer le nom de l'utilisateur"
$entreprise = Read-Host "Veuillez entrer l'entreprise de l'utilisateur"
$password = Read-Host -AsSecureString "Veuillez entrer son mot de passe"
New-ADUser -Name $name -SamAccountName $name -UserPrincipalName $name@Tierslieux86.fr -AccountPassword $password -Path "OU=Utilisateurs, OU=$entreprise, OU=Clients Entreprises, DC=Tierslieux86, DC=fr"
Set-ADUser -Identity $name -ChangePasswordAtLogon $true
$groupe = Read-Host "Veuillez entrer le groupe global cet utilisateur"
Add-ADGroupMember -Identity ("GL_" + $groupe) -Members $name
Enable-ADAccount -Identity $name
