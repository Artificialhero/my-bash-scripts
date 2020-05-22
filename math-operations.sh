#Rounding up numbers
read num

#printf %3
echo $num | bc -l | xargs printf "%.3f"
