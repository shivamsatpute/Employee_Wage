#! /bin/bash
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
empCheck=$(( $RANDOM % 3))
if [ $empCheck -eq $IS_PRESENT ]
then
echo " Employee is present"
EMP_RATE_HR=20
empHrs=8
 SALARY=$(( $empHrs * $EMP_RATE_HR ))
echo "salary: $salary"
else
echo "Employee is absent"
echo "salary=0"
fi
