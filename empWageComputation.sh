#!/bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20

random=$(( RANDOM%3 ))
echo "Random number: "$random
if(( $random == $IS_PART_TIME ))
then
empHrs=4
elif(( $random == $IS_FULL_TIME))
then
empHrs=8
else
empHrs=0
fi
echo "Employee hours: " $empHrs

salary=$(( $empHRS * $ EMP_RATE_PER_HR ))

echo "salary: $salary"

