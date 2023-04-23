#!/bin/bash

#Fonction effectuant l'opération somme
somme_arg()
{
  somme=0

  #On parcours les arguments et on fait leur somme
  for arg in $*
  do
    somme=$(($somme + $arg))
  done
  echo "Somme des arguments : $somme"
}

#Fonction effectuant l'opération multiplication
mult_arg()
{
  produit=1

  #On parcours les arguments et on fait leur produit
  for arg in $*
  do
    produit=$(($produit * $arg))
  done
  echo "Produit des arguments : $produit"
}

#On donne en argument à ces fonctions le tableau des arguments du programme
somme_arg $*
mult_arg $*

#Fonction effectuant l'opération factorielle d'un nombre
facto()
{
  factorielle=1

  #Si le nombre vaut 0 on affiche 0 sinon on calcule normalement
  if [ $1 -eq 0 ]
  then
    factorielle=0
  else
    for arg in $(seq $1 -1 1)
    do
      factorielle=$(($arg * $factorielle))
    done
  fi
  echo "La factorielle du premier argument ($1) est -> $factorielle"
}

#Factorielle de l'argument qui suit l'execution de l'executable
facto $1