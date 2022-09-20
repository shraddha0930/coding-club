bridgelabzOfficials=("Nandha" "Shreyas" "Narayanan" "Mrunali" "Monika")

echo "Array Is : ${bridgelabzOfficials[@]}"





   for emp in ${bridgelabzOfficials[@]}

        do

       if [ $emp == "Shreyas" ]

       then

           echo "$emp Is a LeadMentor of Bridgelabz Solutions"

       elif [ $emp == "Narayanan" ]

                then

                        echo "$emp Is a Founder of Bridgelabz Solutions"

       elif [ $emp == "Nandha" ]

                then

                        echo "$emp Is a Mentor of Bridgelabz Solutions"

       elif [ $emp == "Monika" ]

                then

                        echo "$emp Is a Councilor of Bridgelabz Solutions"

       elif [ $emp == "Mrunali" ]

                then

                        echo "$emp Is a HR of Bridgelabz Solutions"

       else

           echo "$emp is not a part of Bridgelabz Solutions"

       fi

   done
