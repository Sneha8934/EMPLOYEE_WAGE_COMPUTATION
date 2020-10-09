#!/bin/bash -x

echo "------Welcome To Employee Wage Computation------"

function attendance ()
{
	Random=$((RANDOM%2))
	if [ $Random -eq 1 ]
	then
		echo "Employee is Present"
	else
		echo "Employee is Absent"
	fi
}

function main()
{
attendance
}
main

isFullTime=1;
empRatePerHr=20;
randomCheck=$((RANDOM%2))
if [ $isFullTime -eq $randomCheck ];
then
	empHrs=8;
else
	empHrs=0;
fi
dailywage=$(($empHrs*$empRatePerHr))
