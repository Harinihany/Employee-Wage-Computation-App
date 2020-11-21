#!/bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"

isPresent=1
random=$(( RANDOM%2 ))
echo "Random number: "$random
if(( $random == $isPresent ))
then
echo "Employee is Present!"
empHrs=8
ratePerHour=20
salary=$(( $empHRS * $ratePerHour ))
else
echo "Employee is absent!"
salary=0
fi
echo "salary: $salary"

