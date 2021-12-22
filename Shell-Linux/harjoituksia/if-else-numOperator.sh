#!/bin/bash
#if...elif...else - statements
#jos on useampi jos tai kun, jotain muuta vastaava toistettaan sitä proesessia tai tekijänsä

#### jos on useampi operaattori tai haluttaaan syöttä useampi numero tai kertoa jotain

#käyttäjä syöttää kolme lukua
echo -n "Ensimmäinen luku: "
read NUM1
echo -n "Toinen luku: "
read NUM2
echo -n "Kolmas luku: "
read NUM3

#aloittaa operaation jos num1 on suurempi/pienempi kuin num2 tai suurempi/pienempi kuin num3 
#esim. eka < toinen < kolmas & toinen > eka < kolmas ja jne 

if [[ $NUM1 -ge $NUM2 ]]
then
  if [[ $NUM1 -ge $NUM3 ]]
  then
    echo "$NUM1 on suurin numero."
  else
    echo "$NUM3 on suurin numero."
  fi

else
  #jos num2 -ge yhtä tai suurempi kuin num3
  if [[ $NUM2 -ge $NUM3 ]]
  then
    echo "$NUM2 on suurin numero."
  else
    echo "$NUM3 on suurin numero."
  fi
fi
