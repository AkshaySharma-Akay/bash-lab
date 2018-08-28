#! /bin/bash
sum=0; countfail=0; count=0
while read stu_roll_no stu_marks stu_name
do
    sum=`expr $sum + $stu_marks`
    count=`expr $count + 1` 
    if [ $stu_marks -lt 40 ]; then
        countfail=`expr $countfail + 1`;
    fi
    echo -ne "$stu_name ( $stu_marks ): "
    if [ $stu_marks -ge 80 ]; then
        echo  "A"
    elif [ $stu_marks -ge 70 ] && [ $stu_marks -lt 80 ]; then
        echo "B "
    elif [ $stu_marks -ge 60 ] && [ $stu_marks -lt 70 ]; then
        echo "C"
    elif [ $stu_marks -ge 50 ] && [ $stu_marks -lt 60 ]; then
        echo "D"
    elif [ $stu_marks -ge 40 ] && [ $stu_marks -lt 50  ]; then
        echo "E"
    else
        echo "F"
    fi
done
echo "The Average is $(($sum/$count))"
echo "$countfail student fail"