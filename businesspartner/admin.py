from django.contrib import admin
from businesspartner.models import Businesspartner
# Register your models here.

class BusinesspartnerAdmin(admin.ModelAdmin):
    list_display= ('short_image_description','Business_partner')

admin.site.register(Businesspartner,BusinesspartnerAdmin)
