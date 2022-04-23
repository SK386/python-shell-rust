#! /bin/bash
echo "gestor de brilho"

echo "valor do brilho 
1) 1.0 2)0.7 3)0.5 4)0.25"
read brilho


if [[ $brilho -eq 1 ]]
then

xrandr --output LVDS-1 --brightness 1.0
echo "alterado para 1.0"

elif [[ $brilho -eq 2 ]]
then
xrandr --output LVDS-1 --brightness 0.7
echo "alterado para 0.7"

elif [[ $brilho -eq 3 ]]
then
xrandr --output LVDS-1 --brightness 0.5
echo "alterado para 0.5"


elif [[ $brilho -eq 4 ]]
then
xrandr --output LVDS-1 --brightness 0.25
echo "alterado para 0.25"

fi
