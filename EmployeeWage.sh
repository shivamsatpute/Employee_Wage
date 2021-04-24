#! /bin/bash

isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20

totalEmpHrs=100
totalWorkingDays=20

function getWorkingHours() {
	case $1 in
		$isFullTime) workHrs=8 ;;
		$isPartTime) workHrs=4 ;;
		*) workHrs=0 ;;
	esac
	echo "Working Hours :" $workHrs
}

while [[ $totalWorkHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWokingDays ]]
do
	((totalWorkingDays++))
	workHrs"$( getWorkingHours $((RANDOM)) )"
	totalWorkHrs=$(($totalWorkHrs*$workHrs))

done

totalSalary=$(($totalWorkHrs*$workHrs))

echo "Total Salary:" $totalSalary
