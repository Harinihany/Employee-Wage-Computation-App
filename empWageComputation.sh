#!/bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20

random=$(( RANDOM%3 ))
echo "Random number: "$random
case $random in
$IS_PART_TIME) empHrs=4
;;
$IS_FULL_TIME) empHrs=8
;;
*) empHrs=0
esac
echo "Employee hours: " $empHrs

salary=$(( $empHRS * $EMP_RATE_PER_HR ))

echo "salary: $salary"

