#!/bin/bash

echo "
                ---------------------------------------
                               Tablice       
                ---------------------------------------
"

echo -e "\n------------------------Deklaracja------------------------\n"
#---Składnia---
#arrayVar=(var1 var2 var3)

#arrayVar[1]=var1
#arrayVar[2]=var2
#arrayVar[3]=var3

#---Przykłady---
arrayVar=(Zero Jeden Dwa)
echo "arrayVar=(Zero Jeden Dwa)"



echo -e "\n------------------------Dostęp do elementów------------------------\n"

echo "elementy tablicy są indeksowane od 0"
echo ""

echo "Wyświetla tylko pierwszy element tablicy: "
echo "\$arrayVar: $arrayVar"
echo ""

echo "Wyświetlenie wszystkich elementów tablicy"
echo "\${arrayVar[@]}: ${arrayVar[@]}"
echo ""

echo "Dostęp do pojedyńczych elementów"
echo "\${arrayVar[0]}: ${arrayVar[0]}"
echo "\${arrayVar[1]}: ${arrayVar[1]}"
echo "\${arrayVar[2]}: ${arrayVar[2]}"
echo ""

echo "Indeksy elementów tablicy"
echo "\${!arrayVar[@]}: ${!arrayVar[@]}"
echo ""

echo -e "\n------------------------Zmiana wartości elementów------------------------\n"

arrayVar[0]=0
echo "arrayVar[0]=0"
echo "\${arrayVar[0]}: ${arrayVar[0]}"
echo ""

echo -e "\n------------------------Iterowanie po elementach------------------------\n"

for elem in ${arrayVar[@]} ; do
    echo "\$elem: $elem"
done

echo -e "\n------------------------Usuwanie elementów------------------------\n"

echo "\${arrayVar[@]}: ${arrayVar[@]}"
unset arrayVar[1]
echo "unset arrayVar[1]: usuwa element tablicy arrayVar z indeksem 1"
echo "\${arrayVar[@]}: ${arrayVar[@]}"
echo ""

echo "unset nie zmienia indeksów tablicy"
echo "\${!arrayVar[@]}: ${!arrayVar[@]}"
echo ""

echo "\${arrayVar[1]}: ${arrayVar[1]}"
echo "pusto bo element z indeksem 1 nie istnieje"
echo ""

unset arrayVar[@]
echo "unset arrayVar[@]: usuwa wszystkie elementy tablicy"
echo "\$arrayVar: ${arrayVar[@]}"

echo -e "\n------------------------Dodawanie elementów------------------------\n"

echo "nie trzeba dodawać elementów w kolejności"
echo "\$!arrayVar: ${!arrayVar[@]}"
arrayVar[1]=Jeden
echo "arrayVar[1]=Jeden"
echo "\${arrayVar[1]}: ${arrayVar[1]}"
echo "\$!arrayVar: ${!arrayVar[@]}"