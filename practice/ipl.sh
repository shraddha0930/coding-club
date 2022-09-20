echo "Please enter a favourite team in IPL"

echo "hint :: dc rcb gt"

read teamName



matchesPlayed=14

won=0

lost=0

points=0

nrr=""



function errorHandler() {

       echo "Please Check Your Input , Its Invalid Team Name In IPL"

}

function playoffEligibility() {

    if [ $1 -le 4 ]

         then

       echo "$2 is eligible for playoffs in IPL2022"

    else

       echo "$2 is not eligible for playoffs in IPL2022"

         fi

}

function pointsCalculator() {

    

    lost=$((matchesPlayed-$1))

    points=$(($1*2))

         echo "Your Selected Team Is $teamName"

         echo "Overall Matches Played By Team Is $matchesPlayed"

         echo "Place Secured : $3"

         echo "Won : $1 and Lost : $lost"

    echo "Runrate : $2 and Points Scored : $points"

         playoffEligibility $3 $teamName         

}



           if [ $teamName == "mi" ]

           then

                 position=10

           elif [ $teamName == "rcb" ]

           then

                 position=4

           elif [ $teamName == "csk" ]

                        then

                 position=9

           else

                 errorHandler

           fi



case $position in

   4)

      won=8

      nrr="-0.253"

      pointsCalculator $won $nrr $position 

      ;;

   9)

      won=4

      nrr="-0.203"

      pointsCalculator $won $nrr $position

      ;;

   10)

      won=4

      nrr="-0.506"

      pointsCalculator $won $nrr $position

      ;;

   *)

     echo ""

     ;;

esac
