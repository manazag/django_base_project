README
======

## Features

- Compatible with python 3.4
- [Django debug toolbar](http://django-debug-toolbar.readthedocs.org/) enabled for superusers. -- TODO
- [Bcrypt](https://docs.djangoproject.com/en/1.8/topics/auth/passwords/#using-bcrypt-with-django) to hash the passwords
- [HTML5 Boilerplate](http://html5boilerplate.com/)
- [Bootstrap](http://getbootstrap.com/)
- multilanguage localization and timezones enabled
- [Django Rosetta](http://django-rosetta.readthedocs.org/) to manage translations
- provides script to automatically install, configure and use virtualenv via virtualenvwrapper


## Quickstart

### check requirements
- download check script (check-requirements.sh)
  ```bash
  wget https://raw.githubusercontent.com/manazag/django_base_project/master/utils/check-requirements.sh
  ```
- run check
  ```bash
  bash check-requirements.sh
  ```

### install
- download install script (install-django_base_project.sh)
  ```bash
  wget https://raw.githubusercontent.com/manazag/django_base_project/master/utils/install-django_base_project.sh
  ```
- edit PROJECT_NAME and DEST_FOLDER in install script
- run install script
  ```bash
  bash install-django_base_project.sh
  ```

### activate virtualenv
    workon 

### create database
    python manage.py check
    python manage.py migrate

### start server
    python manage.py runserver

## TIPS
- bcrypt requires libffi-dev
    sudo apt-get install libffi-dev
