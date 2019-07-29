#!/bin/sh

NUMPROC=$(ps -efH|grep /usr/bin/mongod|grep -v grep|wc -l)

if [ $NUMPROC -eq 0 ]; then
	echo "mongod not found... starting..."
        service mongod start
fi

NUMPROC=$(ps -efH|grep /usr/local/bin/securecloudd|grep -v grep|wc -l)

if [ $NUMPROC -eq 0 ]; then
        echo "securecloudd not found... starting..."
        /usr/local/bin/securecloudd
fi

NUMPROC=$(screen -ls Explorer|grep "\.Explorer"|wc -l)

if [ $NUMPROC -eq 0 ]; then
        echo "Explorer not found... starting..."
        screen -dmS Explorer /usr/bin/nodejs /root/explorer/bin/cluster
fi

