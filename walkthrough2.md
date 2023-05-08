
***

<p align="center">
🎉 Walkthrough Lab 8, 9 and assignment! 🎉
</p>
<p align="center">
كل اللابات و حلها في مكان واحد
</p>

***

<sub>Check out The [CheatSheet](https://github.com/CS360-OS-Practical/CS360-Practical-/blob/1048b05cc0a23599b1e2447eca4475cf176a163e/CS360CheatSheet.sh)</sub>

Lab 8
=================
1-Write a bash script that receives an integer number as command line argument and prints
whether the number is odd or even.

```sh
#!/bin/bash
number=$1
echo "Command Line Number Entered By The User Is: $number"
result=$(( $number % 2 ))

if [ $result -eq 0 ]
then
  echo "Even Number"
else
  echo "Odd Number"
fi
```

2-Write a bash script that reads an integer number from the user and finds the first 20 odd
numbers starting from the number entered by the user and finds the sum of all the 20
odd numbers.
```sh
#!/bin/bash

read -p 'Enter An Integer Number: ' number
echo "Command Line Number Entered By The User Is: $number"

counter=0
sum=0
while [ $counter -lt 20 ]
do
  result=$(( $number % 2 ))
  if [ $result -eq 1 ]
  then
	sum=$(( $sum + $number))
	echo $number
	((counter++))
	((number++))
  else
	((number++))
  fi
done

echo "Sum Of The Next 20 Odd Numbers Is: $sum"
```

3-Write a bash script that reads an integer number from the user between a range from 1
to 9999 and keeps continue asking for an integer until the user enters the correct
number.
```sh
#!/bin/bash

number=0
until [ $number -le 9999 ] && [ $number -ge 1 ]
do
  echo "Please enter A number between 1-9999 "
  read -p 'enter an int: ' number
done

echo "Number Entered by The User: $number"
```
