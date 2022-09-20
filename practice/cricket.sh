echo "Please enter a favourite team in IPL"
echo "hint :: dc rcb gt"
read teamName

declare -A cskTeam
matchesPlayed=14
won=0
lost=0
points=0
nrr=""
rcbTeam=("Duplessis" "Maxwell" "Siraj" "Dinesh")
miTeam=("Pollard" "Rohit" "Bumrah" "Ishant")

cskTeam[bat]="MoenAli"
cskTeam[bowl]="Bravo"
cskTeam[captain]="Dhoni"
cskTeam[alrounder]="Jadeja"

function rolesByPlayer() {
echo "*******************Execution 6******************"
echo "$2 Is a $1 Of Team $3 In IPL"
}
function categoriesByTeam() {
echo "*******************Execution 5******************"
if [ $1 == "rcb" ]
then
for player in ${rcbTeam[@]}
do
if [ $player == "Siraj" ]
then
rolesByPlayer "Bowler" $player $1
elif [ $player == "Maxwell" ]
then
rolesByPlayer "Alrounder" $player $1
elif [ $player == "Duplessis" ]
then
rolesByPlayer "Captain" $player $1
else
rolesByPlayer "Batsman" $player $1
fi
done
elif [ $1 == "mi" ]
then
for player in ${miTeam[@]}
do
if [ $player == "Bumrah" ]
then
rolesByPlayer "Bowler" $player $1
elif [ $player == "Pollard" ]
then
rolesByPlayer "Alrounder" $player $1
elif [ $player == "Rohit" ]
then
rolesByPlayer "Captain" $player $1
else
rolesByPlayer "Batsman" $player $1
fi
done
elif [ $1 == "csk" ]
then
for player in ${cskTeam[@]}
do
if [ $player == "Bravo" ]
then
rolesByPlayer "Bowler" $player $1
elif [ $player == "Jadeja" ]
then
rolesByPlayer "Alrounder" $player $1
elif [ $player == "Dhoni" ]
then
rolesByPlayer "Captain" $player $1
else
rolesByPlayer "Batsman" $player $1
fi
done
fi
}
function errorHandler() {
echo "Please Check Your Input , Its Invalid Team Name In IPL"
}

function playoffEligibility() {
echo "*******************Execution 4******************"
if [ $1 -le 4 ]
then
echo "$2 is eligible for playoffs in IPL2022"
else
echo "$2 is not eligible for playoffs in IPL2022"
fi
}

function pointsCalculator() {
echo "*******************Execution 3******************"
lost=$((matchesPlayed-$1))
points=$(($1*2))
echo "Your Selected Team Is $teamName"
echo "Overall Matches Played By Team Is $matchesPlayed"
echo "Place Secured : $3"
echo "Won : $1 and Lost : $lost"
echo "Runrate : $2 and Points Scored : $points"
playoffEligibility $3 $teamName
categoriesByTeam $teamName
}



echo "*******************Execution 1******************"
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
echo "*******************Execution 2******************"
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
