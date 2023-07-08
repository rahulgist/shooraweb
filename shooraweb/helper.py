from django.http import HttpResponse
from django.shortcuts import render
from setting.models import setting
from menuhandler.models import menuhandler
from submenuhandler.models import submenuhandler

def get_setting():
    settingData =setting.objects.get(id=1)
    return settingData

def get_main_menus():
    # submenuhandlerData =submenuhandler.objects.all()
        return menuhandler.objects.all()

def get_sub_menus():
    # submenuhandlerData =submenuhandler.objects.all()
        return submenuhandler.objects.all()     