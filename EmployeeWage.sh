#! /bin/bash -x

isPartTime=1
isFullTime=2
maxHrsInMonth=4
empRatePerHr=20
numWorkingDays=20

totalEmpHrs=4
totalWorkingDays=0

function getWorkHrs() {
	local $empCheck=$1
	case $empCheck in
		$isFullTime) empHrs=8 ;;
		$isPartTime) empHrs=4 ;;
		*) empHrs=0 ;;
	esac
	echo $empHrs
}

function getEmpWage() {
	local empHr=$1
	echo $(($empHr*$empRatePerHr))
}

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWokingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHrs="$( getWorkingHours $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailyWage[$totalWorkingDays]="$( getEmpWage $empHrs )"

done

totalSalary=$(($totalEmpHrs*$empRatePerHr))

echo ${dailyWage[@]}
echo $totalSalary
