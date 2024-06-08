#!/bin/bash

echo "
                ---------------------------------------
                           INSTRUKCJE WARUNKOWE        
                ---------------------------------------
"

echo -e "\n------------------------OPERATORY PORÓWNANIA------------------------\n"

#   -lt   |   less than <
#   -le   |   less or equal <=

#   -gt   |   greater than >
#   -ge   |   greater or equal >=

#   -eq   |     equal ==
#   -ne   |     not equal !=

#---Składnia---
#if [[ zmiennaX OPERATOR PORÓWNANIA zmiennaY ]] ; then
    # instrukcje gdy pierwszy warunek jest fałszywy
#elif [[ zmiennaX OPERATOR PORÓWNANIA zmiennaY ]] ; then
    # instrukcje gdy drógi warunek jest prawdziwy
#else
    # instrukcje gdy obydwa warunki są fałszywe
#fi

#---Przykłady---
# -lt - less than <
# then JEST WAŻNE!!!

echo "if [[ 1 -lt 3 ]]"
if [[ 1 -lt 3 ]] ; then # if - jeżeli warunek [[ warunek ]] jest
    echo "Warunek [[ 1 -lt 3 ]] ma wartość logiczną prawda." # prawda
else # else - blok z kodem który sie wykona gdy warunek jest nie spełniony
    echo "Warunek [[ 1 -lt 3 ]] ma wartość logiczną fałsz." # fałsz
fi # fi - do zakończenia bloku warunkowego if
echo ""
# -gt - greater than >
echo "if [[ 5 -gt $1 ]]"
if [[ 5 -gt $1 ]] ; then # $1 - odczytanie zmiennej podanej przy wywołaniu kodu
    echo "Warunek [[ 5 -gt $1 ]] ma wartość logiczną prawda."
else
    echo "Warunek [[ 5 -gt $1 ]] ma wartość logiczną fałsz."
fi
echo ""
# -eq - equal =
echo "if [[ ! 1 -eq 1 ]]"
if [[ ! 1 -eq 1 ]] ; then #[[! 1 -eq 1]] = [[ 1 -ne 1]]
    echo "Warunek [[ ! 1 -eq 1 ]] ma wartość logiczną prawda."
else
    echo "Warunek [[ ! 1 -eq 1 ]] ma wartość logiczną fałsz."
fi

echo "STRING RÓWNA SIĘ ZERO"
zmienna="napis" 
echo "\$(($zmienna)) = $(($zmienna))"


echo -e "\n------------------------OPERACJE LOGICZNE------------------------\n"
# Wyrażenia możemy łączyć w przypadku bardziej skompilikowanych warunków, np. Wykonaj mnożenie jeżeli liczba jest mniejsza od 10 i większa od 0 lub Wykonaj dodawanie jeżeli
# liczba jest mniejsza od 0 lub większa od 10. W takich przypadkach nie wystarczy nam jedno
# wyrażenie, musimy użyć dwóch lub więcej.



#------------------------OPERATORY LOGICZNE------------------------
#   &&   |   AND    |   i
#   ||   |   OR     |   lub
#   !    |   NOT    |  negacja


#---Składnia---
# (prawda staje się fałszem i na odwrót) [[ ! 5 -eq 5 ]] = false SPACJA PRZED WYKRZYKNIKIEM!!
# przed każdym wyrażenie możemy dodać symbol ! aby zanegować wynik wyrażenia

#if [[ zmiennaX OPERATOR PORÓWNANIA zmiennaY ]] OPERATOR LOGICZNY [[ zmiennaX OPERATOR PORÓWNANIA zmiennaY ]]
#then
    # instrukcje gdy prawda
#else
    # instrukcje gdy falsz
#fi

#---Przykłady---

#   &&   |   AND    |   i
#moduł z $1 mniejszy niż 5
echo "if [[ $1 -lt 5 ]] && [[ $1 -gt -5 ]]"
if [[ $1 -lt 5 ]] && [[ $1 -gt -5 ]] ; then
    echo "[[ $1 -lt 5 ]] && [[ $1 -gt -5 ]] = true Moduł z $1 mniejszy od 5."
else
    echo "[[ $1 -lt 5 ]] && [[ $1 -gt -5 ]] = false Moduł z $1 większy bądź równy 5."
fi
echo ""
#   !    |   NOT    |  negacja
#moduł z $1 mniejszy bądź równy 5
#warunki równoznaczne do poprzedniego
echo "[[ ! $1 -gt 5 ]] && [[ ! $1 -lt -5 ]]"
if [[ ! $1 -gt 5 ]] && [[ ! $1 -lt -5 ]] ; then
    echo "[[ ! $1 -gt 5 ]] && [[ ! $1 -lt -5 ]] = true Moduł z $1 mniejszy bądź równy 5."
else
    echo "[[ ! $1 -gt 5 ]] && [[ ! $1 -lt -5 ]] = false Moduł z $1 większy od 5."
fi
echo ""
#   ||   |   OR     |   lub
#moduł z $1 7 większy niż 7
echo "if [[ $1 -gt 7 ]] || [[ $1 -lt -7 ]]"
if [[ $1 -gt 7 ]] || [[ $1 -lt -7 ]] ; then
    echo "[[ $1 -gt 7 ]] || [[ $1 -lt -7 ]] = true Moduł z $1 większy od 7."
else
    echo "[[ $1 -gt 7 ]] || [[ $1 -lt -7 ]] = false Moduł z $1 mniejszy bądź równy 7."
fi

echo -e "\n------------------------OPERATORY PLIKOWE------------------------\n"

#   -d    |  directory|   istnieje i jest folderem
#   -f    |  file     |   istnieje i jest plikiem ()
#   -e    |  exists   |   istnieje
#   -s    |  istnieje |   i rozmiar jest większy od 0 (s - size)
#   -r    |  read     |   sprawdza, czy plik jest do odczytu
#   -w    |  write    |   sprawdza, czy plik jest do zapisu
#   -x    |  execute  |   sprawdza, czy plik jest wykonywalny

#---Przykłady---

FILEVAR=Plik-w-tym-katalogu.txt
echo "if [[ -e \$FILEVAR ]]"
if [[ -e $FILEVAR ]] ; then
    echo "[[ -e $FILEVAR ]] = true plik $FILEVAR istnieje."
else
    echo "[[ -e $FILEVAR ]] = true plik $FILEVAR nie istnieje."
fi

echo -e "\n------------------------OPERATORY ŁAŃCUCHÓW ZNAKÓW------------------------\n"

#   =   |   sprawdza, czy łańcuchy znaków są identyczne
#   !=  |   sprawdza, czy łańcuchy znaków są różne
#   z   |   sprawdza, czy łańcuch znaków jest pusty
#   -n  |   sprawdza, czy łańcuch znaków nie jest pusty