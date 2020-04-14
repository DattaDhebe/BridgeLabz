#!/bin/bash -x
isPresent=1;
randomCheck=$(( RANDOM % 2 ));

if [ $isPresent -eq $randomCheck ];
then 
	echo "Emploee is Present";
else
	echo "Emploee is Absent";
fi
