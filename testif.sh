#!/bin/sh
echo Press 'n' to break or any other key to continue
read -n 1 -t 10 -s cont
if [ $cont == 'n' ]; then exit 1
else
echo you pressed $cont
fi
