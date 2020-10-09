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
	case $1 in
		$IS_FULL_TIME)
			empHrs=8
			;;
		$IS_PART_TIME)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
}
function getEmpWage() {
	echo $(($1*$EMP_RATE_PER_HR))
}

While [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
         empCheck=$(($RANDOM%3));
         getWorkHrs $empCheck
	 totalEmpHr=$(($totalEmpHr+$empHrs))
	 dailyWages["$totalWorkingDays"]=$(($empHrs*$EMP_RATE_PER_HR))
done
totalSalary="$( getEmpWage $totalEmpHr)"


isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
	empCheck=$(($RANDOM%3));
		case $empCheck in
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
	totalSalary=$(($totalSalary+$Salary));
done

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

