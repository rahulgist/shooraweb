from django.contrib import admin
from homepage.models import homepage
# Register your models here.

class HomepageAdmin(admin.ModelAdmin):
    list_display= ('heading1','heading1_description','heading2','heading2_description')

admin.site.register(homepage,HomepageAdmin)
