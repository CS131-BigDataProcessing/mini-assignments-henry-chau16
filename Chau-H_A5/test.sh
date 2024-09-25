#!\bin\bash

declare -a ages=(
[0]=5
[1]=17
[2]=48
[3]=72
)

declare -a temps=(
[0]=62
[1]=5
[2]=97
[3]=73
)

echo "testing age.sh"
#testing age.sh
for i in ${ages[@]}
do
	sh age.sh $i
done

echo "testing temperature.sh"
#testing temperature.sh
for i in ${temps[@]}
do
	sh temperature.sh $i
done


