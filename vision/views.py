from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def test_vison(request):
    return HttpResponse('Hello, welcome to the index page.')