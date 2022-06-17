for (( i=0;i<10;i++ ))
do
   random=$(( RANDOM%900 + 100 ))
   echo $random
   randomArray[$i]=$random
done
echo "total three digit random is " ${randomArray[@]}
firstMin=999
sec_Min=999
firstMax=0
sec_Max=0
echo ${randomArray[@]}
for (( i=0;i<10;i++ ))
do
number=${randomArray[i]}
if [ $number > $sec_Max ]
then
if [ $number > $firstMax ]
then
sec_Max=$firstMax
firstMax=$number
else
sec_Max=$number
fi
fi
if [ $number < $sec_Min ]
then
if [ $number < $firstMin ]
then
sec_Min=$firstMin
firstMin=$number
else
sec_Min=$number
fi
fi
done
echo "second maximum is $sec_Max"
echo "second minimum is $sec_Min"



