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

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWage

function getWorkHrs() {
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3))

case $randomCheck in
	$isFullTime)
		empHrs=8;
		;;
	$isPartTime)
		empHrs=4;
		;;
		*)
		empHrs=0;
esac
salary=$(($empRatePerHr*$empHrs));

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
}
