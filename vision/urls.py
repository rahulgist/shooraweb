from django.contrib import admin
from django.urls import path,include
from vision import views

urlpatterns = [
    path('/', views.test_vison)
]