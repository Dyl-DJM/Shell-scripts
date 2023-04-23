#!/bin/bash

#Dans ce programme on gère 4 cas par différentes classes
# Unités - Dizaines - Centaines - Au delà

#Unités
if [ $1 -gt 0 ]
then
  if [ $1 -ge 10 ]
  then
    unite=$(($1 / 10 * 10))
    unite=$(($1-$unite))
  else
    unite=$1
  fi

  if [ $unite -gt 4 ] && [ $unite -lt 9 ]
  then
    unite_rom="V"
    unite=$(($unite - 5))
  fi

  if [ $unite -ne 4 ] && [ $unite -ne 9 ]
  then
    if [ $unite -ne 0 ]
    then
      for i in $(seq 1 1 $unite)
      do
        nouv="I"
        unite_rom="$unite_rom$nouv"
      done
    fi
  fi

  if [ $unite -eq 4 ]
  then
    unite_rom="IV"
  fi

  if [ $unite -eq 9 ]
  then
    unite_rom="IX"
  fi

fi


#Dizaines
if [ $1 -gt 9 ]
then
  dizaine=$(($1 / 100 * 100))
  dizaine=$(($1-$dizaine))
  dizaine=$(($dizaine / 10))

  if [ $dizaine -gt 4 ] && [ $dizaine -lt 9 ]
  then
    dizaine_rom="L"
    dizaine=$(($dizaine - 5))
  fi

  if [ $dizaine -ne 4 ] && [ $dizaine -ne 9 ]
  then
    if [ $dizaine -ne 0 ]
    then
      for i in $(seq 1 1 $dizaine)
      do
        nouv="X"
        dizaine_rom="$dizaine_rom$nouv"
      done
    fi
  fi

  if [ $dizaine -eq 4 ]
  then
    dizaine_rom="XL"
  fi

  if [ $dizaine -eq 9 ]
  then
    dizaine_rom="IC"
  fi
fi

#Centaines
if [ $1 -gt 99 ]
then
  centaine=$(($1 / 1000 * 1000))
  centaine=$(($1 - $centaine))
  centaine=$(($centaine / 100))

  if [ $centaine -gt 4 ] && [ $centaine -lt 9 ]
  then
    centaine_rom="D"
    centaine=$(($centaine - 5))
  fi

  if [ $centaine -ne 4 ] && [ $centaine -ne 9 ]
  then
    if [ $centaine -ne 0 ]
    then
      for i in $(seq 1 1 $centaine)
      do
        nouv="C"
        centaine_rom="$centaine_rom$nouv"
      done
    fi
  fi

  if [ $centaine -eq 4 ]
  then
    centaine_rom="CD"
  fi

  if [ $centaine -eq 9 ]
  then
    centaine_rom="CM"
  fi
fi


#Au delà
if [ $1 -gt 999 ]
then
  for i in $(seq 1 1 $(($1/1000)))
  do
    nouv="M"
    milier_rom="$milier_rom$nouv"
  done
fi

#On affiche
echo "$milier_rom$centaine_rom$dizaine_rom$unite_rom"