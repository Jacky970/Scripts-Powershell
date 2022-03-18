$utilisateur = Read-Host "Veuillez entrer l'utilisateurs dont les données seront écrites dans un fichier texte"
$informations = Get-ADUser -Identity $utilisateur -Properties *
Set-Content C:\Users\Administrateur\Documents\Infos_Utilisateurs\$utilisateur.txt $informations
