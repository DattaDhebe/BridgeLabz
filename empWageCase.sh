#!/bin/bash -x

isPartTimeEmpPresent=1;
isFullTimeEmpPresent=2;
empRatePerHr=20;
empCheck=$(( RANDOM % 3 ));

case $empCheck in
	$isFullTimeEmpPresent)
		empHrs=8
		;;
	$isPartTimePresent)
		empHrs=4
		;;
	*)
		empHrs=0
		;;
esac

salary=$(( $empHrs * $empRatePerHr ));

