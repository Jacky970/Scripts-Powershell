$name = Read-Host "Veuillez entrer le nom du groupe de domaine local"
New-ADGroup -Name "DL_$name" -GroupScope DomainLocal -Path "OU=Groupes locaux de domaine, OU=Groupes, DC=Tierslieux86, DC=fr"
