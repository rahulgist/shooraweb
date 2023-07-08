from django.contrib import admin
from .models import submenuhandler
# Register your models here.
class submenuAdmin(admin.ModelAdmin):
    list_display= ('menuhandler','sub_title','subweb_url')

admin.site.register(submenuhandler,submenuAdmin)
