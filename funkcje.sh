#!/usr/bin/env bash

echo "
                ---------------------------------------
                               Funkcje      
                ---------------------------------------
"
echo -e "\n-------------------- ----Deklaracja Funkcji------------------------\n"
#---Składnia---
#function_name() {
#   function body   
#}

#function_name () {
#   function body   
#}

#function function_name {
#   function body   
#}

#---Przykłady---
func_01() {
    echo "\$USER: $USER"
    echo "\$0: $0"
    echo "\$1: $1"
    echo "\$2: $2"
}


echo -e "\n------------------------Wywołanie Funkcji------------------------\n"
#---Składnia---
#function_name $1 $2
#
#

#---Przykłady---
func_01 "func_var1" "func_var2"

echo -e "\n------------------------Wywołanie Funkcji w bashu------------------------\n"

func_02() {
    if [[ $# -eq 2 ]] ; then
        echo "\$1: $1"
        echo "\$2: $2"
        
        return 0
    else

        for element in $@ ; do
            echo "$element"
        done

        return 1
    fi
}



echo "żeby używać w konsoli trzeba zmieniś shebang na #!/usr/bin/env bash"
echo "i wklepać w konsole: source [ścieżka do pliku w którym jest funkcja]"
echo "żeby nie wpisywać po każej zmianie w funkcji source trzeba edytować plik .bashrc"
echo "wpisać tam source \$HOME/[ścieżka do pliku w którym jest funkcja]"
