echo "Enter a number : "
read n
x=$n
sum=0
while [ $x -gt 0 ]
do
	rem=$(( $x % 10 ))
	sum=$(( $sum + $rem ))
	x=$(( $x / 10 ))
done
echo "Sum of digits of $n is $sum"
