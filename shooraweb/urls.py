"""
URL configuration for shooraweb project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from shooraweb import views
from django.conf import settings ## media url define
from django.conf.urls.static import static ## media url define


urlpatterns = [
    path('admin/', admin.site.urls),
    path('__debug__/', include('debug_toolbar.urls')),
    path('', views.index, name='home'),
    path('about-us', views.about, name='about-us'),
    path('board-members', views.board, name='board-members'),
    path('privacy-policy', views.privacy, name='privacy-policy'),
    path('vision-mission', views.visionmission, name='vision-mission'),
    path('loan-product', views.products, name='loan-product'),
    path('business-process', views.business, name='business-process'),
    path('help-support', views.support, name='help-support'),
    # path('test-rahul', include('vision.urls'))
]

if settings.DEBUG: ## FOR Media FILE upload 
    urlpatterns+=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
