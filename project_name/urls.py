"""{{ project_name }} URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
# -*- coding: utf-8 -*-
from django.conf.urls import include, url
from django.contrib import admin
from django.conf.urls.i18n import i18n_patterns

urlpatterns = [
]

urlpatterns += i18n_patterns(
    # base app
    url(r'', include('base.urls')),

    # Admin
    url(r'^admin/', include(admin.site.urls)),
)

from django.conf import settings
if 'rosetta' in settings.INSTALLED_APPS:
    urlpatterns += i18n_patterns(
        '',
        url(r'^rosetta/', include('rosetta.urls')),
    )
