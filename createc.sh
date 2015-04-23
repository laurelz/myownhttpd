#!/bin/bash
echo "I am a shell to create some clients"
if [ $# -eq 0 ]; then
	echo "no arguments"
fi
num=1;
if [ $# -eq 1 ]; then
	num=$@;
fi
echo $num;

count=0;
while [ $count -lt $num ]
do
    echo $count
	#create some terminals, each terminal execute client once
    gnome-terminal -t "terminal$count" -x bash -c "sh ./clientexec.sh;"
	count=$(($count+1));
done
