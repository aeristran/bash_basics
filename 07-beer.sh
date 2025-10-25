#!/bin/sh

echo "Let's sing a beer song"
echo "How many bottles?"
read count

while [ $count -ge 0 ]; do
  if [ $count -ge 2 ]; then
      echo "$count bottles of beer on the wall, $count bottles of beer"
      echo "Take one down pass it around"
  elif [ $count -eq 1 ]; then
      echo "$count bottle of beer on the wall, $count bottles of beer"
      echo "Take one down pass it around"
  else
      echo "no more bottles of beer on the wall"
  fi
  
  # the following statement is equivalent to: let "count=count-1"
  ((count = count - 1))

done

# exercise: implement another counting song (such as 12 days of Christmas) 
# using loops and if statements.

echo ""
echo "Let's sing a 7 days Christmas song"

for day in 1 2 3 4 5 6 7; do
echo "on the $day day of Christmas, my true love gave to me:"

if [ $day -eq 1 ]; then
echo "a partridge in a pear tree"

elif [ $day -eq 2 ]; then
echo "Two turtle doves"
echo "And a partridge in a pear tree"

elif [ $day -eq 3 ]; then
echo "Three French hens"
echo "Two turtle doves"
echo "And a partridge in a pear tree"

else
echo "$day wonderful gifts!"
fi
done