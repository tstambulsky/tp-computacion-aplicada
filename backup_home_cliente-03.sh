#! /bin/bash

timestamp=`date +%Y-%m-%d_%H-%M-%S%Z`


if [ ! -d "./logs" ]; then
	mkdir logs
fi

touch ./logs/backup_home_cliente-03.sj_$timestamp.log
logfile="./logs/backup_home_cliente-03.sj_${timestamp}.log"

if ping -c 1 -W 1 192.168.20.3; then
	echo "Conexion establecida" >> $logfile
	sshpass -p "ubuntu" rsync -avzrh --stats --exclude '.cache' --no-perms -e ssh ubuntu@192.168.20.3:/home/ /media/disco_backups/ >> $logfile
	ls -la /media/disco_backups >> $logfile
else
	echo "No se pudo establecer conexion" >> $logfile
fi
