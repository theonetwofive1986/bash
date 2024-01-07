#/usr/bin/bash

set -e

df -h > df.tmp

awk '/mmcblk0p1/ { print $5 }' ./df.tmp > df1.tmp && sed 's/\%//g' ./df1.tmp > df2.tmp

percent=$(cat "./df2.tmp")

if [ "$percent" = 75 ]
then
	echo "disk full" | ssmtp yourname@domain.topdomain
else
	echo "notfull"
fi

rm -f d*.tmp



