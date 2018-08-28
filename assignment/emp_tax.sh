#! /bin/bash
while read emp_name eid salary
do
    if [ $salary -le $a ]
    then
            tax=0
    elif [ $salary -gt 25000 ] && [ $salary -le 50000 ]
    then
        tax=`expr $salary / 10`
    elif [ $salary -gt 50000 ] && [ $salary -le 100000 ]
    then
        tax=`expr $salary / 5`
    else
        tax=`expr $salary \* 3`
        tax=`expr $tax / 10`
    fi
    echo "$emp_name : Tax = $tax "
done