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
