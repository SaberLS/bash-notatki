echo "
                ---------------------------------------
                                Pętle                  
                ---------------------------------------
"

echo -e "\n------------------------WHILE------------------------\n"
# Instrukcje wewnątrz bloku do ... done są wykonywane tak długo, jak WARUNEK zwraca
# prawdę. Przed każdym wykonaniem bloku do ... done sprawdzany jest WARUNEK.
# Ważnym jest, aby WARUNEK zwrócił w którymś momencie wartośc false, w przeciwnym
# wypadku będzie to pętla nieskończona (inifinite loop).

#---Składnia---
#while [[ WARUNEK ]]
#do
#   instrukcje dla petli
#done

#---Przykład---
Counter=0

echo "while [[ Counter -ne 5 ]]"
#Pętla nie skończona
#while [[ $Counter -ne 5 ]] ; do
#    echo "Counter = $Counter"
#done

while [[ $Counter -ne 5 ]] ; do
    ((Counter++))
    echo "Counter = $Counter"
done
echo ""
#------------------------UNTIL------------------------
# Odwrotność funkcji while
# Instrukcje wewnątrz bloku do ... done są wykonywane tak długo, jak WARUNEK zwraca
# fałsz. Przed każdym wykonaniem bloku do ... done sprawdzany jest WARUNEK.
# Ważnym jest, aby WARUNEK zwrócił w którymś momencie wartośc prawde, w przeciwnym
# wypadku będzie to pętla nieskończona (inifinite loop).

#---Składnia---
#until [[ WARUNEK ]]
#do
#   instrukcje dla petli
#done

#---Przykład---
echo "until [[ Counter -eq 0 ]]"
until [[ $Counter -eq 0 ]] ; do
    echo "Counter = $Counter"
    ((Counter--))
done
echo ""

echo -e "\n------------------------FOR------------------------\n"
# Pętle for tworzy się na dwa sposoby, pierwszy jest podejściem przeznaczonym dla Bash,
# drugim jest podejście znane z języka C, w którym znana jest liczba elementów.
# Innym narzędziem do zakresów jest program seq. Możemy go wykorzystać aby uzyskać ten sam efekt.
# Zaletą seq jest możliwość wykorzystania zmiennej do ustalenia wartości początkowej,
# końcowej oraz kroku zapisu.

#---Składnia---
# for ZMIENNA in LIST
# do
#   instrukcje dla petli
# done

# for ((inicjacja_zmiennej; warunek_kończący; zwiększanie/zmniejszanie_wartości)) ; do 
#   instrukcje dla petli
# done

# for ZMIENNA in ( seq $1 $2 $3 )
# do
#   instrukcje dla petli
# done

#---Przykład---

# Separatorem między elementami listy jest SPACE
# wyświetla a b c d e f
echo "for elem in a b c d e f"
for elem in a b c d e f ; do
    echo "elem = $elem"
done
echo ""

# wyświetla a, b, c, d, e, f
echo "for elem in a, b, c, d, e, f"
for elem in a, b, c, d, e, f ; do
    echo "elem = $elem"
done
echo ""

STRINGVAR="JEDEN DWA TRZY"
echo "STRINGVAR="JEDEN DWA TRZY"
for elem in \$STRINGVAR"
for elem in $STRINGVAR ; do
    echo "elem = $elem."
done
echo ""

# Przez to że string jest w "" jest traktowany jako jeden element
echo "for elem in \"JEDEN DWA TRZY\""
for elem in "JEDEN DWA TRZY" ; do
    echo "elem = $elem."
done
echo ""

echo "for elem in \"JEDEN\" \"DWA\" \"TRZY\""
for elem in "JEDEN" "DWA" "TRZY" ; do
    echo "elem = $elem."
done
echo ""

echo "for elem in 1 2 3 4 5"
for elem in 1 2 3 4 5 ; do
    echo "$elem + 1 = $(($elem + 1))"
done
echo ""

echo "for elem in {1..5}"
for elem in {1..5} ; do
    echo "elem = $elem"
done
echo ""

echo "for elem in {1..10..3}"
for elem in {1..10..3} ; do
    echo "elem = $elem"
done
echo ""

echo "for elem in {15..1..3}"
for elem in {15..1..3} ; do
    echo "elem = $elem"
done
echo ""

# tworzy 10 plików data_$i.dat
# for i in {1..10} ; do
#    touch data_$i.dat
# done

echo "for elem in \$(seq 0 2 6)"
for elem in $(seq 0 2 6)
do
  echo "elem = $elem"
done