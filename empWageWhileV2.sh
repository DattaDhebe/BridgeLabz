#!/bin/bash -x

valid=true
isPartTimeEmpPresent=1;
isFullTimeEmpPresent=2;
empRatePerHr=20;
Days=1;

while [ $valid ]
do
	empCheck=$(( RANDOM % 3 ))
	if [ $Days -eq 20 ]
	then
		break;
	elif [ $totalHrs -gt 100 ]
	then
		break;
	else
		(( Days++ ))
		case $empCheck in
			$isFullTimeEmpPresent)
				empHrs=8
				totalHrs=$(($totalHrs + $empHrs))
				;;
			$isPartTimeEmpPresent)
				empHrs=4
				totalHrs=$(($totalHrs + $empHrs))
				;;
			*)
				empHrs=0
				totalHrs=$(($totalHrs + $empHrs))
				;;
		esac
	fi
done

totalSalary=$(( $totalHrs * $empRatePerHr));


