function readvariable{
  read guess
}

echo "Type in your guess for the number of files in the working directory"
readvariable
echo "You entered: $guess"

number=($ls | wc -l)
status=0

while [[ $status -eq 0 ]]
do
  if [[ $guess -eq $number ]]
  then
    echo "Congratulations! Your guess was right"
    status=1
  elif [[ $guess -gt $number]]
  then
    echo "Sorry, your guess is too high. Please type in another number"
    readvariable
    echo "You entered: $guess"
  else
    echo "Sorry, your guess is too low. Please type in another number"
    readvariable
    echo "You entered: $guess"
  fi
done
