README
======

## Features

- Based on [manazag/django_base_project](https://github.com/manazag/django_base_project)
- Compatible with python 3.4
- [Django debug toolbar](http://django-debug-toolbar.readthedocs.org/) enabled for superusers. -- TODO
- [Bcrypt](https://docs.djangoproject.com/en/1.8/topics/auth/passwords/#using-bcrypt-with-django) to hash the passwords
- [HTML5 Boilerplate](http://html5boilerplate.com/)
- [Bootstrap](http://getbootstrap.com/)
- Multilanguage localization and timezones enabled
- [Django Rosetta](http://django-rosetta.readthedocs.org/) to manage translations
- Provides script to automatically install, configure and use virtualenv via virtualenvwrapper


## Quickstart

### install requirements

- install pip3

  ```bash
  sudo apt-get install python3-pip
  ```

- install virtualenv

  ```bash
  sudo apt-get install python-virtualenv
  ```

- install virtualenvwrapper

  ```bash
  sudo apt-get install virtualenvwrapper
  ```

  - add virtualenvwrapper.sh to PATH

    find virtualenvwrapper.sh

    ```bash
    sudo updatedb
    locate virtualenvwrapper.sh
    /usr/share/virtualenvwrapper/virtualenvwrapper.sh
    ```

    source virtualenvwrapper.sh

    ```bash
    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
    ```

    add last line in .bashrc to source virtualenvwrapper.sh at login


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
  wget https://raw.githubusercontent.com/manazag/django_base_project/master/utils/secret_key_generator.py
  ```

- edit PROJECT_NAME and PROJECT_FOLDER in install script

  - PROJECT_NAME is the project name

  - PROJECT_FOLDER is the absolute path where the project will be installed

- run install script

  ```bash
  bash install-django_base_project.sh
  ```

### activate virtualenv

activate virtulenv (follow instructions printed out by install script)

  ```bash
  workon <DEV_VENV>
  ```

### create database

  ```bash
  python manage.py check
  python manage.py migrate
  ```

### create superuser

  ```bash
  python manage.py createsuperuser
  ```

### start server

  ```bash
  python manage.py runserver
  ```

your new django project is available at [127.0.0.1:8000](http://127.0.0.1:8000)

## Documentation

- start documentation

  ```bash
  sphinx-quickstart
  > Root path for the documentation [.]: ./docs
  > Separate source and build directories (y/n) [n]: n
  > Name prefix for templates and static dir [_]: _
  > Project name: <PROJECT_NAME>
  > Author name(s): <AUTHOR>
  > Project version: 0.1
  > Project release [1.0]: 0.1.0
  > Source file suffix [.rst]: .rst
  > Name of your master document (without suffix) [index]: index
  > Do you want to use the epub builder (y/n) [n]: n
  > autodoc: automatically insert docstrings from modules (y/n) [n]: y
  > doctest: automatically test code snippets in doctest blocks (y/n) [n]: n
  > intersphinx: link between Sphinx documentation of different projects (y/n) [n]: n
  > todo: write “todo” entries that can be shown or hidden on build (y/n) [n]: n
  > coverage: checks for documentation coverage (y/n) [n]: n
  > pngmath: include math, rendered as PNG images (y/n) [n]: n
  > mathjax: include math, rendered in the browser by MathJax (y/n) [n]: n
  > ifconfig: conditional inclusion of content based on config values (y/n) [n]: n
  > viewcode: include links to the source code of documented Python objects (y/n) [n]: n
  > Create Makefile? (y/n) [y]: y
  > Create Windows command file? (y/n) [y]: n
  ```

- edit docs/conf.py adding the following

  ```python
  sys.path.insert(0, os.path.abspath('..'))
  from django.conf import settings
  settings.configure()
  ```

- build documentantion

  ```bash
  cd docs
  make html
  make latex
  ```

## Translations

## Testing

- [PEP8](https://pypi.python.org/pypi/pep8) test

  ```bash
  python manage.py test test_pep8
  ```

## TIPS

- bcrypt requires libffi-dev

  ```bash
  sudo apt-get install libffi-dev
  ```
