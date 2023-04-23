#!/bin/bash

#Cette fonction permet la copie de fichiers à une certaine adresse
copy()
{
  #On traite que les extensions .c
  liste_fichiers=`ls *.c`
  slash="/"
  adresse=$adresse$slash

  #Pour tous les fichiers du tableau on fait des copies
  for fichier in $liste_fichiers
  do
    echo "Fichier trouvé : $fichier"

    nouv_extension=".save"
    (cp $fichier $adresse$fichier$nouv_extension)
    echo "Fichier de sauvegarde créé : $fichier$nouv_extension"
  done

}

# On récupère l'adresse du répertoire donné en argument, on crée un dossier backup
adresse=`find . -print | grep -i $1 | sed -n '1p'`
mkdir "$adresse/backup"
adresse="$adresse/backup"

# À l'adresse du répertoire on crée les copies
# Dans l'exemple on peut mettre ./Exo4.sh TEST
copy $adresse