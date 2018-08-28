#! /bin/bash
sum=0; countfail=0; count=0
while read stu_roll_no stu_marks stu_name
do
    sum=`expr $sum + $stu_marks`
    count=`expr $count + 1` 
    if [ $stu_marks -lt 50 ]; then
        countfail=`expr $countfail + 1`;
    fi
done
echo "The Average is $(($sum/$count))"
echo "$countfail student fail"