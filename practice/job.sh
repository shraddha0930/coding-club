echo "Please select a JOB type here"
echo "hint- 1.fulltime 2.parttime"
read Jobtype
salary=0
perhourcost=100
loghourperday=8
isfulltime=1
isparttime=2
type=""
 if[$Jobtype==$isfulltime]
  then
  salary=$((perhourcost*loghourperday))
  type="fulltime"
 elif[$Jobtype==$isparttime]
  then
  salary=$((perhourcost*loghourperday))
  salary=$((salary/2))
  type="parttime"
 else
  echo " your given is wrong"
fi
echo "your selected for $type and income is $salary"


