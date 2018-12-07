#! /bin/bash
#cars.sh
#Billy Ross

r=1
while [ $r -eq 1 ] 
do
	echo "***Car Inventory***"
	echo "--Please select a choice--"
	echo "(1) List the cars"
	echo "(2) Enter a car"
	echo "(3) Quit"
	read input

	case "$input" in 
		"1") clear ; sort -n My_old_cars.txt ; echo -e "\n\n" ;;
		"2") clear ; echo "Enter the year:" ; read year ; echo "Enter the make:" ; read make ; echo "Enter the modle:" ; read model ; echo "$year:$make:$model" >> My_old_cars.txt ; clear ;;
		"3") clear ; echo "Quiting..." ; r=0
	esac
done
