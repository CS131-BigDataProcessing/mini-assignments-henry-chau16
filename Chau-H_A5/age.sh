#!\bin\bash


if [ $1 -lt 13 ]
then
	echo "child"
elif [ $1 -lt 20 ]
then
	echo "teen"
elif [ $1 -lt 65 ]
then
	echo "adult"
else
	echo "elderly"
fi


