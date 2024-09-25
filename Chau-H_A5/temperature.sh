#!\bin\bash


if [ $1 -lt 67 ]
then
	if [ $1 -lt 55 ]
	then
		echo "freezing"
	else
		echo "cold"
	fi
else
	if [ $1 -lt 85 ]
	then
		echo "nice"
	else
		echo "hot"
	fi
fi

