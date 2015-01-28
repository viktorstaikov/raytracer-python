#! /bin/bash
echo "--> unzipping pkg.tar.gz"
tar xzf pkg.tar.gz
echo "----> pkg.tar.gz unzipped"

echo "--> adding ~/pkg to PATH"
export PATH=~/pkg:$PATH
echo "----> ~/pkg to PATH added"

let COUNTER=1

if [ ! -z "$1" ]; then
	COUNTER="$1"
fi
echo "--> running raytracer.py"
python2.7 raytracer.py $COUNTER

echo "DONE!!!"



#echo $PATH