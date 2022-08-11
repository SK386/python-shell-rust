#! /bin/bash
echo "gestor de brilho"

echo "valor do brilho 
1) aumentar 2)Diminuir"
read opcao

case $opcao in

	"1")
echo "Digite a porcentagem 
10 25 50 75 "
read brilho

xbacklight -inc $brilho
echo "aumentado $brilho"
;;

	"2")
echo "Digite a porcentagem 
10% 25% 50% 75% "
read brilho

xbacklight -dec $brilho
echo "diminuido $brilho"
;;
esac

