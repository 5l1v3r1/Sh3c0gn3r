#!/bin/bash
##############################################
#       Created By
#      pwx - jonatas fil
###############################################
#      Sh3c0gn3r v1.0
#
#    Shellcode Command Generator
###############################################
# Github: ninj4c0d3r
###############################################
clear
/usr/bin/notify-send -t 5000 "Sh3c0gn3r !!!"


# MENU

Menu () {

cat <<!
       Sh3c0gn3r v1.0

  Shellcode Command Generator                                      
 _____ _   ___     ___         ___     
|   __| |_|_  |___|   |___ ___|_  |___ 
|__   |   |_  |  _| | | . |   |_  |  _|
|_____|_|_|___|___|___|_  |_|_|___|_|  
                      |___|                                 
------------------------------------#
1) - Gerar Shellcode [Comando]      #
e) - Sair                           #
------------------------------------#
!
	echo -n "Qual a opção desejada ? "
	read opcao
case $opcao in 
   1) sh_shell ;;
   e) sh_sair ;;

	*) echo "\"$opcao\" Opção inválida!"; sleep 2; Menu ;;  
esac
}

# SHELLCODE

sh_shell () {
clear
echo -n "Digite o comando: "
read comando
clear
TEXT=$comando;
echo "STRING: $TEXT";
/usr/bin/notify-send -t 5000 "String Ok ! [Sh3c0gn3r]..."
sleep 1
HEX="$(echo -n $TEXT | od -A n -t x1 | sed "s/[ ]//2g")";
echo "HEX: $HEX";
/usr/bin/notify-send -t 5000 "Hex Ok ! [Sh3c0gn3r]..."
sleep 1
SHELLCODE=$(echo $HEX | sed -e 's/../\\x&/g' | sed "s/[ ]//2g");
echo "SHELLCODE: $SHELLCODE";
/usr/bin/notify-send -t 5000 "ShellCode Ok ! [Sh3c0gn3r]..."
sleep 2
echo -n "Deseja voltar para o menu ? (yes):"
read yes
clear
Menu
/usr/bin/notify-send -t 5000 "Menu [Sh3c0gn3r]..."
}

# SAIR
sh_sair () {
   clear
   echo "Exiting..."
   /usr/bin/notify-send -t 5000 "Exiting [Sh3c0gn3r]..."
   sleep 2
clear
exit
}
Menu
