from django.http import HttpResponse
from django.shortcuts import render
from .helper import get_setting , get_main_menus , get_sub_menus
from homepage.models import homepage
from businesspartner.models import Businesspartner
from aboutus.models import aboutus
from boardmember.models import boardmember
from policy.models import policy
from vision.models import vision
from loanproduct.models import loanproduct
from slider.models import slider
from businessprocess.models import businessprocess
from businessprocessdescription.models import businessprocessdescription

def index(request):
    sliderData = {}
    settingData = get_setting()
  
    # settingData =setting.objects.get(id=1)
    homepageData =homepage.objects.get(id=1) 
    partnerData =Businesspartner.objects.all()
    if request.path == '/':
        sliderData =slider.objects.all().filter(menuhandler_id=9)
        print(sliderData)
    
    data = {
        'setting':settingData,
        'homepage':homepageData,
        'partner':partnerData,
        'sliders': sliderData,
        'get_main_menu': get_main_menus(),
        'get_sub_menu': get_sub_menus()

    }
    return render(request,'index.html',data)

def about(request):
    settingData = get_setting()
    aboutData =aboutus.objects.get(id=1)
    # print(aboutData)
    data = {
        'setting':settingData,
        'about' : aboutData,
        'get_main_menu': get_main_menus(),
        'get_sub_menu': get_sub_menus()
    }
    return render(request,'aboutus.html',data)

def board(request):
    settingData = get_setting()
    boardmemberData =boardmember.objects.all()
    data = {
        'setting':settingData,
        'board':boardmemberData,
        'get_main_menu': get_main_menus(),
        'get_sub_menu': get_sub_menus()
    }
    return render(request,'board.html',data)

def privacy(request):
    settingData = get_setting()
    privacyData =policy.objects.get(policy_type='privacy_policy')
    data = {
        'setting':settingData,
        'privacy':privacyData,
        'get_main_menu': get_main_menus(),
        'get_sub_menu': get_sub_menus()
    }
    return render(request,'privacy.html',data)

def visionmission(request):
    settingData = get_setting()
    visionData =vision.objects.get(id=1)
    data = {
        'setting':settingData,
        'vision':visionData,
        'get_main_menu': get_main_menus(),
        'get_sub_menu': get_sub_menus()
    }
    return render(request,'vision.html',data)

def products(request):
    settingData = get_setting()
    loanproductData =loanproduct.objects.all()
    data = {
        'setting':settingData,
        'loanproduct':loanproductData,
        'get_main_menu': get_main_menus(),
        'get_sub_menu': get_sub_menus()
    }
    return render(request,'product.html',data)

def business(request):
    settingData = get_setting()
    businessprocessdata = businessprocess.objects.all().order_by('id').values()
    # for title in businessprocessdata:

    businessprocessdescriptiondata = businessprocessdescription.objects.all().order_by('businessprocess_id').values()
        # businessprocessdescriptiondata = businessprocessdescription.objects.filter(businessprocess = title).order_by('businessprocess_id').values()

    data = {
        'setting':settingData,
        'businessprocess':businessprocessdata,
        'businessprocessdescription':businessprocessdescriptiondata,
        'get_main_menu': get_main_menus(),
        'get_sub_menu': get_sub_menus()

    }
    return render(request,'business.html',data)

def support(request):
    settingData = get_setting()
    data = {
        'setting':settingData,
        'get_main_menu': get_main_menus(),
        'get_sub_menu': get_sub_menus()
    }
    return render(request,'support.html',data)
   

