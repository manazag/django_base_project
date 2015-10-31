# -*- coding: utf-8 -*-
from .base import *

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

# Database
# https://docs.djangoproject.com/en/1.8/ref/settings/#databases
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}

INSTALLED_APPS += (
    'debug_toolbar',
    'rosetta',
    'test_pep8',
)

TEST_PEP8_DIRS = [os.path.dirname(BASE_DIR), ]
TEST_PEP8_EXCLUDE = [os.path.dirname(BASE_DIR) + '/docs']
