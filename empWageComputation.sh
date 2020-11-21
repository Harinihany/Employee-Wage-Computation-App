#!/bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
totalEmpHrs=0
totalWorkingDays=0

((totalWorkingDays++))
echo "Total working day: $totalWorkingDays"

while(( $totalEmpHrs < $MAX_HRS_IN_MONTH && $totalWorkingDays < $NUM_WORKING_DAYS ))
do
random=$(( RANDOM%3 ))
echo "Random number: "$random
case $random in
$IS_PART_TIME) empHrs=4
;;
$IS_FULL_TIME) empHrs=8
;;
*) empHrs=0
esac

totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
echo "Total Employee Hours: $totalEmpHrs"
totalSalary=$(( $totalSalary * $EMP_RATE_PER_HR ))
done

echo "Total Salary: $totalSalary"



