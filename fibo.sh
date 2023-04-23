#!/bin/bash

#Fonction affichant le n ieme membre de la suite de Fibonnacci
Fibo()
{
  F_n_1=1
  F_n_2=0
  F_n=0
  swap=0

  if [ $1 -eq 0 ]
  then
    echo "Fibonnaci de $1 -> $F_n_2"
  fi


  if [ $1 -eq 1 ]
  then
    echo "Fibonnaci de $1 -> $F_n_1"
  fi

  # On utilise la formule de recurrence : Fn = Fn-1 + Fn-2
  if [ $1 -gt 1 ]
  then
    for i in $(seq 2 $1)
    do
      F_n=$(($F_n_1+$F_n_2))
      swap=$F_n_1
      F_n_1=$F_n
      F_n_2=$swap
    done
    echo "Fibonnaci de $1 -> $F_n"
  fi
}

#On calcule le résultat de la suite de Fibonnacci pour l'entier pris en argument
Fibo $1