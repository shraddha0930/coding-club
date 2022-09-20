employees=("Nandha" "Swathy" "Shamlee" "Anil")



echo "Array Is : ${employees[@]}"



echo "************Create*************"

employees[4]="Priya"

employees[5]="Sara"



echo "After Add , Array Is : ${employees[@]}" 



echo "************Retrieve All**************"

echo "Array Is : ${employees[@]}"

echo "************Retrieve Specific*********"

echo "Array Is : ${employees[3]}"



echo "************Update********************"

employees[0]="Nandhakumar"

employees[1]="Swetha"

echo "After Update , Array Is : ${employees[@]}"



echo "************Delete*******************"

unset 'employees[3]'

unset 'employees[5]'

echo "After Delete , Array Is : ${employees[@]}"
