#!/bin/bash
docker ps -a |grep $1
status=$?
if [ ${status} -eq 0 ];then
	docker rm $2 --force
	docker run -p $4 --name $2 -d $1/$2:$3
else
	docker run -p $4 --name $2 -d $1/$2:$3
fi

