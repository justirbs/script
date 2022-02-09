#!/bin/bash
if [ -d $1 ] 
then
    compteur=0
    for i in $(ls $1)
    do 
        if [ -x $1/$i ]
        then
            echo "la taille du fichier executable " $i " est : " $(wc -c < $1/$i) " carcatères."
            compteur=$((compteur+1))
            if [ ! -d ./exec ]
            then 
                echo $(mkdir exec)
            fi
        echo $(mv $1/$i ./exec/$i)
        fi
    done
    echo "il y a " $compteur " fichiers exécutables. Ils ont été déplacé"
fi