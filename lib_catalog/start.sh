#!/bin/bash
#file shows that data added 
filename=ready.file

if [ -e $filename ]
then
	echo "not first launch, continue"
else
	echo "First launch, create DB and fill it"
	cd /django
	sleep 5
	python manage.py migrate
	python manage.py loaddata bbk_data.json
	rm *.docx Dockerfile_dj requirements.txt
	touch $filename
	echo "Finished"
fi

echo "Start back end"
sleep 5
python manage.py runserver 0.0.0.0:8000



