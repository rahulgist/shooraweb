from django.contrib import admin
from menuhandler.models import menuhandler
# Register your models here.

class menuhandlerAdmin(admin.ModelAdmin):
    list_display= ('title','web_url')

admin.site.register(menuhandler,menuhandlerAdmin)
