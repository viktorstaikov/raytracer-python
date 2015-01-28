#! /bin/bash


let COUNTER=5


if [ ! -z "$1" ]; then
	COUNTER="$1"
fi

until [  $COUNTER -le 0 ]; do
	echo "scenes left: $COUNTER"
	python2.7 raytracer.py $COUNTER
	let COUNTER-=1
done

convert -delay 10 -loop 0 fig*.png animaion.gif
