#!/bin/bash

#On renvoie le nombre d'argument avec $# et on parcourt à l'aide d'une boucle
#les arguments de ce tableau

echo "J'ai reçu $# arguments sur la ligne de commande"
for arg in $*
do
echo " -> $arg"
done
