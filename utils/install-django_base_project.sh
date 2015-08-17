#!/bin/bash

#PROJECT_NAME="django_base_project"
PROJECT_NAME="mike"
DEST_FOLDER="/home/managai/workspace/github.com/manazag"

# retrieve python3 executable
PYTHON3=`which python3`

# clean environment variables
unset DJANGO_SETTINGS_MODULE

# load virtualenvwrapper
source `locate virtualenvwrapper.sh`

# create development virtualenv
DEV_ENV=$PROJECT_NAME"_dev"
mkvirtualenv --python=$PYTHON3 $DEV_ENV

# generate SECRET_KEY
#SECRET_KEY=`cat /dev/urandom | tr -cd "[:graph:]" | head -c 50`
SECRET_KEY=`python secret_key_generator.py`

# activate development virtualenv
workon $DEV_ENV

# setup pre and post activate for virtual environment
echo "" >> $VIRTUAL_ENV/bin/preactivate
echo "unset DJANGO_SETTINGS_MODULE" >> $VIRTUAL_ENV/bin/preactivate
echo "unset SECRET_KEY" >> $VIRTUAL_ENV/bin/preactivate

echo "" >> $VIRTUAL_ENV/bin/postactivate
echo "export DJANGO_SETTINGS_MODULE='${PROJECT_NAME}.settings.development'" >> $VIRTUAL_ENV/bin/postactivate
echo "export SECRET_KEY='${SECRET_KEY}'" >> $VIRTUAL_ENV/bin/postactivate

# install django
TMP_FILE=/tmp/base`date +%s`.txt
wget -O $TMP_FILE https://raw.githubusercontent.com/manazag/django_base_project/master/requirements/base.txt 
#pip install Django==1.8.2
pip install -r $TMP_FILE

# create project folder
PROJECT_FOLDER=$DEST_FOLDER/$PROJECT_NAME
mkdir $PROJECT_FOLDER

# create project
#django-admin startproject ${PROJECT_NAME} ${PROJECT_FOLDER}
#django-admin startproject project_name ${PROJECT_FOLDER}
#django-admin startproject --template=https://github.com/pinax/pinax-project-zero/zipball/master prova ${PROJECT_FOLDER}
django-admin startproject --template=https://github.com/manazag/django_base_project/zipball/master ${PROJECT_NAME} ${PROJECT_FOLDER}

pip install -r $PROJECT_FOLDER/requirements/development.txt

##TMP

#export DJANGO_SETTINGS_MODULE="project_name.settings.development"
#export SECRET_KEY="^0-200r@)xdzd)xzo%-l^kg7$hoq)%=%)u4_nq4$ckh8u6)g5-"
