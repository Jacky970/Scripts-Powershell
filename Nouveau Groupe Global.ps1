$name = Read-Host "Veuillez entrer le nom du groupe global"
New-ADGroup -Name "GL_$name" -GroupScope Global -Path "OU=Groupes globaux, OU=Groupes, DC=Tierslieux86, DC=fr"
