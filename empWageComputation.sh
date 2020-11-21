#!/bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"

IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=100
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
totalEmpHrs=0
totalWorkingDays=0
totalWorkHours=0

function calculateDailyWage()
{
empHrs=$1
daySalary=$(( $empHrs * $EMP_RATE_PER_HR ))
echo $daySalary
}

function getWorkingHours()
{
case $1 in
$IS_FULL_TIME ) empHrs=8
;;
$IS_PART_TIME ) empHrs=4
;;
*) empHrs=0
;;
esac
echo $empHrs
}

while(( $totalWorkHrs < $MAX_HRS_IN_MONTH && $totalWorkingDays < $NUM_WORKING_DAYS ))
do

((totalWorkingDays++))
#Calling function getWorkingHours by passing random number
workHours="$( getWorkingHours $(( RANDOM%3 )) )"
echo "Work hours from function getWorkingHours()::::::::::>>> $workHours "
totalWorkHours=$(( $totalWorkHours + $workHours ))
echo -e "TotalWorkHours: $totalWorkHours\n"

done

totalSalary=$(( $totalWorkHours * $EMP_RATE_PER_HR ));


