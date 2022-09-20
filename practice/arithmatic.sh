echo "Please select any of the arithmetic operations"

echo "hint - 1.Add 2.Sub 3.Multiply 4.Division"

read userInput



read -p "Enter X : " x

read -p "Enter Y : " y



result=0



if [ $userInput == 4 ]

then

    result=$((x/y))

elif [ $userInput == 2 ]                        

then

    result=$((x-y))

elif [ $userInput == 1 ]                        

then

    result=$((x+y))

elif [ $userInput == 3 ]                        

then

    result=$((x*y))

else

    echo "Your Given Input Is Invalid , Please Try Again ..."

fi
echo "Answer is :$result"
