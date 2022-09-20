declare -A movies

movies[english]="spiderman"

movies[telugu]="rrr"

movies[hindi]="okjaanu"

movies[tamil]="vikram"



echo "Dictionary Is : ${movies[@]}"

echo "************Create*************"

movies[kannada]="kgf"

movies[malayalam]="kurup"



echo "After Add , Dictionary Is : ${movies[@]}" 



echo "************Retrieve All**************"

echo "Dictionary Is : ${movies[@]}"

echo "************Retrieve Specific*********"

echo "Dictionary Is : ${movies[telugu]}"



echo "************Update********************"

movies[malayalam]="sitarama"

movies[tamil]="beast"

echo "After Update , Dictionary Is : ${movies[@]}"



echo "************Delete*******************"

unset 'movies[english]'

unset 'movies[tamil]'

echo "After Delete , Dictionary Is : ${movies[@]}"
